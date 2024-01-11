public with sharing class InterviewOpportunity {
  public static void updateOppCloseDate(String userName) {
    User user = [SELECT Id, Name FROM User WHERE Name = :userName];
    Id userId = user.Id;

    Date days30after = Date.today() + 30;

    List<Opportunity> opps = [
      SELECT Id, Name, CloseDate
      FROM Opportunity
      WHERE
        OwnerId = :userId
        AND StageName != 'Closed Won'
        AND StageName != 'Closed Lost'
    ];

    //System.debug(opps);
    List<Opportunity> oppsUpdated = new List<Opportunity>();
    for (Opportunity each : opps) {
      each.CloseDate = days30after;
      oppsUpdated.add(each);
    }
    update oppsUpdated;
  }
  public static Decimal calculateAverageAmount(Id accId) {
    AggregateResult averageAmount = [
      SELECT AVG(Amount) avgAmount
      FROM Opportunity
      WHERE AccountId = :accId AND StageName = 'Closed Won'
    ];

    if (averageAmount != null) {
      Decimal avgAmount = (Decimal) averageAmount.get('avgAmount');
      System.debug(avgAmount);
      return avgAmount;
    }
    return null;
  }

  public static String getBestSellingProduct(){

    AggregateResult bestSellingResult = [
            SELECT Product2Id, SUM(Quantity) totalQuantity
            FROM OpportunityLineItem
            WHERE Opportunity.StageName = 'Closed Won'
            GROUP BY Product2Id
            ORDER BY SUM(Quantity) DESC
            LIMIT 1
        ];

        if (bestSellingResult != null) {
            Id bestSellingProductId = (Id)bestSellingResult.get('Product2Id');
            return [SELECT Name FROM Product2 WHERE Id = :bestSellingProductId].Name;
        }

        return null; // No closed-won opportunities or OpportunityLineItems found
    }
}
