trigger triggerTest on Account (before update) {

    //List<Account> accts = [SELECT Id, Name, Description FROM Account WHERE Id IN: Trigger.old];

    for(Account each : Trigger.new) {
        each.Description = 'Description from trigger2';
    }

    //update accts;
        


    //System.debug(accts); 

}