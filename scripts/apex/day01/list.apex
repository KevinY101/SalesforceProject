List<Account> accs = [SELECT Id, Name FROM Account LIMIT 2];
for(Account acc : accs){
            acc.Name += 'Test4';
}
System.debug(accs);
update accs;


