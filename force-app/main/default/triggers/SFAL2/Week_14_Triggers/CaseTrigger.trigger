trigger CaseTrigger on Case(after insert, after update) {

  if (Trigger.isAfter && Trigger.isInsert) {
    List<Id> accIds = new List<Id>();
    for (Case each : Trigger.new) {
      Id accId = each.AccountId;
      accIds.add(accId);
    }
    
    CalculateCaseOrigin.CountCasesBasedOnOrigin(accIds);
  }

}
