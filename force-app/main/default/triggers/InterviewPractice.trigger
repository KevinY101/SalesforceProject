trigger InterviewPractice on Contact(after insert) {
  if (Trigger.isAfter && Trigger.isInsert) {
    List<Id> accIds = new List<Id>();

    for (Contact each : Trigger.new) {
      if (each.Phone != null && each.AccountId != null) {
        accIds.add(each.AccountId);
      }
    }

    if (!accIds.isEmpty()) {
      List<Account> updatedAccs = [
        SELECT Id, Phone
        FROM Account
        WHERE Id IN :accIds
      ];
      for (Account each : updatedAccs) {
        each.Phone = Trigger.newMap.get(each.Id).Phone;
      }
      update updatedAccs;
    }
  }

}
