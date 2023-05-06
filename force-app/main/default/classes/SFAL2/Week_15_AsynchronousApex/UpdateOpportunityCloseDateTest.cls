@isTest  
    public class UpdateOpportunityCloseDateTest {

    @isTest
    static void  testUpdateOppCloseDate() {
        // arrange- prepare test data 
       OpportunityUpdateCloseDateDataFactory.OppUpdateCloseDate(2);

        // act - schedule your job
         Test.startTest();
        String cronExp = '00 59 23 L * ?';
        String jobId = System.schedule('UpdateOpportunityCloseDate', cronExp, new UpdateOpportunityCloseDate());
         Test.stopTest();

        // assert-  Verify that the CloseDate field was updated for the "Closed Won" Opportunities
         List<Opportunity> updatedOpps = [SELECT Id, CloseDate FROM Opportunity WHERE StageName = 'Closed Won'];
       
        
        Date today = Date.today();
        Date endOfMonth = today.toStartOfMonth().addMonths(1).addDays(-1);
        
         for (Opportunity opp : updatedOpps) {
             System.assertEquals(endOfMonth, opp.CloseDate);
         }
    }
}