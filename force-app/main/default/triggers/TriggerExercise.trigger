trigger TriggerExercise on Contact (after insert, after update, after delete) {

    /*  Create a checkbox field on Contact named 'active'
        Create a number field on Account named 'Active Contacts' (Active_Contacts__c)
        You need to show total active child contacts on parent account, when a new contact is created or updated
        if the account has 3 contacts and two of them are active, active contacts should be equal to 2
        Hint: create two different logic for insert and update events
              think of in which conditions you should store the account ids (the conditions should differ in insert and update event)
              use your ids in a query ( use aggregate function )
              build final list of accounts to update
    */
    
    if(trigger.isAfter && trigger.isInsert){
    
        Set<Id> accountIds = new Set<Id>();
    
        for(Contact con : trigger.new){
            if(con.Active__c==true && con.AccountId!=null){
                accountIds.add(con.AccountId);
            }
        }
    
        List<AggregateResult> results = [Select AccountId, count(Id) numberofActiveContacts
                                        from Contact
                                        where Active__c=true and AccountId in : accountIds
                                        group by AccountId ];
    
        List<Account> accountsToUpdate = new List<Account>();
    
        for(AggregateResult result : results){
            Account acc = new Account (id=(id)result.get('AccountId'), Active_Contacts__c=(decimal)result.get('numberofActiveContacts'));
            accountsToUpdate.add(acc);
        }
    
        update accountsToUpdate;
    
    }
    if(trigger.isAfter && trigger.isUpdate){
        Set<Id> ids = new Set<Id>();
    
        for(Contact con: trigger.new){
            Contact oldCon = trigger.oldMap.get(con.Id);
            if(con.Active__c != oldCon.Active__c){
                ids.add(con.AccountId);
                // Remove the old AccountId if it's no longer related to an active contact
                if(!con.Active__c){
                    ids.remove(oldCon.AccountId);
                }
            }
        }
    
        AggregateResult[] results = [Select AccountId, count(id) numberOfActiveContacts
                                    from Contact
                                    where Active__c=true  And AccountId in :ids 
                                    group by AccountId ];
    
        List<Account> accountsToUpdate = new List<Account>();
    
        for(AggregateResult result : results){
            Account acc = new Account (id=(id)result.get('AccountId'), Active_Contacts__c=(decimal)result.get('numberofActiveContacts'));
            accountsToUpdate.add(acc);
        }
    
        update accountsToUpdate;
    }
    
    if(trigger.isAfter && trigger.isDelete){
    
        Set<Id> ids = new Set<Id>();
    
        for(Contact con : trigger.old){
            if(con.Active__c==true)
            ids.add(con.AccountId);
        }
    
        AggregateResult[] results = [Select AccountId, count(id)numberOfActiveContacts
                                    from Contact
                                    where Active__c=true  And AccountId in :ids 
                                    group by AccountId ];
    
        List<Account> accountsToUpdate = new List<Account>();
    
        for(AggregateResult result : results){
            Account acc = new Account (id=(id)result.get('AccountId'), Active_Contacts__c=(decimal)result.get('numberofActiveContacts'));
            accountsToUpdate.add(acc);
        }
    
        update accountsToUpdate;
    
    
    
    }
    }