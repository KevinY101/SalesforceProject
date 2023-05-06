public class ContactTestDataFactory {


    public static void createContacts(Integer numberOfContacts) {

        List<Contact> contactsToInsert = new List<Contact>();
        for (Integer i = 0; i < numberOfContacts; i++) {
            Contact newContact = new Contact();
            newContact.LastName = 'Last Name' + i;
            newContact.FirstName = 'First Name' + i;
            newContact.Email = 'email' + i + '@example.com';
            newContact.Phone = '123-456-7890';
            contactsToInsert.add(newContact);
        }
        insert contactsToInsert;
    }
}