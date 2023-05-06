/*
SCENARIO: Create a future method to count how many cases are created through Origin: Phone, Web, Email. You need to put the counted value on Account in 3 different fields (Create 3 custom fields to display the counted values). Ensure proper code coverage as well.
*/
public class CalculateCaseOrigin {
  @future
  public static void CountCasesBasedOnOrigin(List<Id> accIds) {
    List<Account> accList = [
      SELECT
        Id,
        Cases_through_Email__c,
        Cases_through_Phone__c,
        Cases_through_Web__c,
        (SELECT Id, Origin FROM Cases)
      FROM Account
      WHERE Id IN :accIds
    ];

    for (Account acc : accList) {
     Integer Email = 0, Web = 0, Phone = 0;

      for (Case ca : acc.Cases) {
        if (ca.Origin == 'Phone') {
          Phone++;
        } else if (ca.Origin == 'Web') {
          Web++;
        } else if (ca.Origin == 'Email') {
          Email++;
        }
      }
      acc.Cases_through_Email__c = Email;
      acc.Cases_through_Web__c = Web;
      acc.Cases_through_Phone__c = Phone;
    }
    if (!accList.isEmpty()) {
      update accList;
    }
  }
}
//Go to your org and open an account record. Create 3 cases with different Origins (web, email, phone)
//Deploy your source to the org.
//Go to anonymous window, SOQL all the accounts, store Ids in a List, then provide the list of Ids into the method to test if it works. Go check your Apex Jobs to see the status of the future job method. And check any account details page if the custom fields are populated.
/*
IN ANONYMOUS WINDOW OR IN NEW .apex CLASS
List <Account> accList = [SELECT Id FROM Account];
List <Id> accIds = new List<Id>();
for (Account acc : accList){
    accIds.add(acc.Id);
}

CalculateCaseOrigin.CountCasesBasedOnOrigin(accIds);
*/
