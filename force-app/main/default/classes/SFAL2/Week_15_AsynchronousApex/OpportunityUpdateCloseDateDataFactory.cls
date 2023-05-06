// utility class for creating an  Opportunity record
public  class OpportunityUpdateCloseDateDataFactory {


public static void OppUpdateCloseDate(Integer count) {

    Date today = Date.today();
    Date endOfMonth = today.toStartOfMonth().addMonths(1).addDays(-1);
    
    List<Opportunity> opps = new List<Opportunity>();
    
    for(Integer i = 0; i<count; i++){
    opps.add(new Opportunity(Name='Test Opp '+ i, StageName='Closed Won', CloseDate=endOfMonth.addDays(-1)));

    }
    insert opps;

}
}