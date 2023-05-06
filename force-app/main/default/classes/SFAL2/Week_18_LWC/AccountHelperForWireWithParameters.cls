public class AccountHelperForWireWithParameters {

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList(Boolean accountNumberRequired) {
        List <Account> accList = [SELECT Id, Name, accountNumber FROM Account WHERE accountNumber != null LIMIT 5 ];

        return accList;
    }
}