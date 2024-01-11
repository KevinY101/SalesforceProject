@isTest
public class AccountTriggerTest {
    @isTest
    public static void testCreateContactWithAccountName() {

        //prepare test data (arrange)
        Account a1 = new Account(Name = 'Salesforce');

        //Take action (act)
        test.startTest();
        insert a1;
        test.stopTest();
        

        //write a SOQL query to get the latest version of the data saved in the org

        Account a1Saved = [SELECT Id, Name, (SELECT Id, LastName, AccountId FROM Contacts) FROM Account WHERE Name = 'Salesforce'];

        List<Contact> conList = a1Saved.contacts ;

        System.debug (conList);

        //Assert

        System.assertEquals('Salesforce', conList[0].LastName);
        System.assertEquals(1, conList.size());

    }
}