//Add an opportunity for each account with an annual revenue greater than 1000000 (if there is not any other opportunity related to the account) whenever accounts are updated
trigger oppForEachAccount on Account(after update) {
  List<Opportunity> oppList = [
    SELECT Id
    FROM Opportunity
    WHERE AccountId IN :Trigger.new
  ];

  List<Opportunity> oppsToAdd = new List<Opportunity>();

  for (Account a : Trigger.new) {
    if (a.AnnualRevenue > 1000000) {
      List<Opportunity> oppsToCheck = new List<Opportunity>();
      for (Opportunity each : oppList) {
        if (each.AccountId == a.Id) {
          oppsToCheck.add(each);
        }
      }
      if (oppsToCheck.size() == 0) {
        Opportunity oppty = new Opportunity(
          Name = a.Name, AccountId = a.Id,
          StageName = 'Prospecting',
          CloseDate = system.today().addDays(30));
        oppsToAdd.add(oppty);
      }
    }
  }
  insert oppsToAdd;

}