// Use .soql files to store SOQL queries.
// You can execute queries in VS Code by selecting the
// query text and running the command:
// SFDX: Execute SOQL Query with Currently Selected Text

// https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql_select_examples.htm

// SELECT Id, Name FROM Account ORDER BY Name ASC LIMIT 5
List<Account> accts = [SELECT Id, Name FROM Account ORDER BY Name ASC LIMIT 5];
System.debug(accts);

// SELECT Id, Name, AnnualRevenue FROM Account

// SELECT Id, FirstName, LastName FROM Contact
// WHERE FirstName != null

// SELECT Id, FirstName, LastName, MailingState FROM Contact
// WHERE MailingState IN ('NC','KS','CA')

// SELECT Id, FirstName, LastName, MailingState FROM Contact
// ORDER BY ASC

// SELECT Id, FirstName, LastName, MailingState FROM Contact
// LIMIT 5

// SELECT Id, Name, BillingState, AnnualRevenue FROM Account
//WHERE AnnualRevenue !=null
//ORDER BY AnnualRevenue Desc

//-- top 5 account with most annual revenue
//SELECT Id, Name, BillingState, AnnualRevenue FROM Account
//WHERE AnnualRevenue !=null
//ORDER BY AnnualRevenue Desc
//LIMIT 5

// -- DEFINING TO SEE NULL VALUES ON TOP OR BOTTOM OF THE RESULT

//SELECT Id, Name, BillingState, AnnualRevenue FROM Account
//ORDER BY AnnualRevenue Desc NULLs Last
//LIMIT 5

