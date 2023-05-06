@isTest
public class ContactTestDataFactoryTest {
    @isTest
    public static void testCreateContacts() {

        Integer numberOfContacts = 50;

        Test.startTest();
        ContactTestDataFactory.createContacts(numberOfContacts);
        Test.stopTest();

        //List <Contact> contacts = [SELECT Id, LastName FROM Contact];
        //Integer actualNumberofContacts = contacts.size();
        Integer actualNumberofContacts = [SELECT COUNT() FROM Contact];

        System.assertEquals(numberOfContacts, actualNumberofContacts);

        List <Contact> createdContacts = [SELECT Id, LastName, FirstName, Email, Phone FROM Contact];
        
        for(Contact createdContact : createdContacts){
            System.assertNotEquals(null, createdContact.LastName);
            System.assertNotEquals(null, createdContact.FirstName);
            System.assertNotEquals(null, createdContact.Email);
            System.assertNotEquals(null, createdContact.Phone);
        }

    }
}