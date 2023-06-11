public with sharing class AccountsAndContactsThatIncludesCom {

    @AuraEnabled(cacheable=true)
    public static List<List<SObject>> accountsAndContacts() {

        List<List<SObject>> searchList = new List<List<SObject>>();

        searchList= [FIND 'com' IN ALL FIELDS RETURNING Account(Name,Website), Contact(Name,Email)];

        return searchList;


    }
}
