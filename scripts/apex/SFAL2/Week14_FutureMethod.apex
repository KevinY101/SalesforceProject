List <Account> accList = [SELECT Id FROM Account];
List <Id> accIds = new List<Id>();
for (Account acc : accList){
    accIds.add(acc.Id);
}

CalculateCaseOrigin.CountCasesBasedOnOrigin(accIds);