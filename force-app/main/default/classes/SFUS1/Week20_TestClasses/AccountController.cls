public with sharing class AccountController {

    /**
     * Create a static method called getAccountByName
     * @param accName name of account you are searching
     * @return first matching account in your salesforce org
     */


     public static Account getAccountByName(String accName){

        Account a = [SELECT Id,Name FROM Account
                    WHERE Name =  :accName LIMIT 1]; 
        return a ; 
     }


    /**
     * Create a static method called getAccountWithAnnualRevenue
     * @return List of Accounts in your salesforce org 
     * with AnnualRevenue Field filled up
     */
    public static List<Account> getAccountWithAnnualRevenue(){

        // List<Account> lst = [SELECT Id,Name, AnnualRevenue 
        //         FROM Account 
        //         WHERE AnnualRevenue != null] ; 
        // return lst ; 

        return [SELECT Id,Name, AnnualRevenue 
                FROM Account 
                WHERE AnnualRevenue != null] ; 

    }

    /**
     * Create a static method called getMaxRevenue
     * @return max AnnualRevenue for all Accounts in your salesforce org 
     */
    public static Decimal getMaxRevenue(){
         
       AggregateResult result = [SELECT MAX(AnnualRevenue) HighestRevenue 
                                FROM Account];
       // need to cast the result of get method to decimal 
       // or it will throw illegal 
       Decimal max =  (Decimal) result.get('HighestRevenue') ; 
    
       return max; 

    }
    




}