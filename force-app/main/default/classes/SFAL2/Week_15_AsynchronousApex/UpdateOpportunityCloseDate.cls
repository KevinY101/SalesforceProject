/*
Suppose you have a requirement to automatically update the "CloseDate" field of all Opportunity records that have a stage of "Closed Won" to be the last day of the current month. This can be accomplished using a schedulable Apex class that runs at the end of each month. 
*/


public class UpdateOpportunityCloseDate implements Schedulable {
    public void execute(SchedulableContext sc) {

        Date currentDate = Date.today();
        Integer currentYear = currentDate.year();
        Integer currentMonth = currentDate.month();

        Date lastDayOfMonth = Date.newInstance(currentYear, currentMonth, 1).addMonths(1).addDays(-1);

        // Get all the Opportunity records that have a stage of "Closed Won"
        List<Opportunity> opportunities = [SELECT Id, Name, CloseDate, StageName FROM Opportunity WHERE StageName = 'Closed Won'];

        
        // Loop through each Opportunity record and update its CloseDate if necessary
        for(Opportunity opportunity : opportunities){
            if(opportunity.CloseDate != lastDayOfMonth){
                opportunity.CloseDate = lastDayOfMonth;
            }
        }
        // Update all the Opportunity records in a single DML operation
        update opportunities;

    }
}