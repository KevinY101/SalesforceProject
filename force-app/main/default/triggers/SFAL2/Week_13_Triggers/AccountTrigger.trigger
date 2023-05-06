/*
Requirement: When user created an account, write a logic to create contact with same name and associate account and contact.
Trigger has to be written on
Which object: Account
What operation: Insert
Which event: After
*/
trigger AccountTrigger on Account (before insert, after insert) {

    if (Trigger.isAfter && Trigger.isInsert){

        List<Contact> conList = new List<Contact>();

        for (Account acc : Trigger.new){
            Contact con = new Contact();
            con.LastName = acc.Name;
            con.AccountId = acc.Id;
            conList.add(con);
        }
        insert conList;

    }

}