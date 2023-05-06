@isTest
public without sharing class CaseTriggerTest {
    @isTest
    public static void testCaseInsert() {

        //Arrange
        List<Account> accList = new List<Account>();
        for(Integer i = 1; i <= 5 ;i++) {
            Account acc = new Account (Name = 'Test' + i);
            accList.add(acc);
        }
        
        insert accList;
        

        List<Case> caseList = new List<Case>();
        List<Id> accIds = new List<Id>();

        for(Account acc : accList){
            accIds.add(acc.Id);
            for(Integer i=1; i<=3;i++){
                Case c = new Case(Status = 'New', Origin = 'Phone', AccountId = acc.Id);
                caseList.add(c);
            }
            for(Integer i=1; i<=3;i++){
                Case c = new Case(Status = 'New', Origin = 'Web', AccountId = acc.Id);
                caseList.add(c);
            }
            for(Integer i=1; i<=3;i++){
                Case c = new Case(Status = 'New', Origin = 'Email', AccountId = acc.Id);
                caseList.add(c);
            }
        }
        
        
    //Act
    Test.startTest();
    insert caseList;
    Test.stopTest();

    //Assert

    List<Account> updatedAccounts = [
      SELECT
        Id,
        Cases_through_Email__c,
        Cases_through_Phone__c,
        Cases_through_Web__c
      FROM Account
      WHERE Id IN :accIds];
      System.debug('accIds value is : ' + accIds); 
    
    System.assertEquals(3, updatedAccounts[0].Cases_through_Email__c);
    System.assertEquals(3, updatedAccounts[0].Cases_through_Phone__c);
    System.assertEquals(3, updatedAccounts[0].Cases_through_Web__c);

    }
}