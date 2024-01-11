List<Account> accs = new List<Account>();
List <Account> accList2 = [SELECT Id, Name FROM Account WHERE Name LIKE '%C%' ORDER BY Name LIMIT 5 ];
List<Account> accList = [
  SELECT Id, Name
  FROM Account
  ORDER BY Name DESC NULLS LAST
  LIMIT 5
];
 
for (Account each : accList) {
  System.debug('Current Account Name : ' + each.Name);
}
Car car = new Car();
car.start();

Id myAccountID = accList[0].id;
List<Contact> conList = [
  SELECT Id, LastName, Account.Name
  FROM Contact
  WHERE AccountID = :myAccountID
];
System.debug('Contacts here: ' + conList);
System.debug('Account Name:' + conList[0].Account.Name);

List<SObject> queryResults = Database.query('SELECT Id, LastName, Account.Name FROM Contact WHERE AccountID = :myAccountID');

  Contact con = (Contact) queryResults[0];
  System.debug('myVar value is : ' + con);
  
String conAccountName = con.Account.Name;
  System.debug('myVar value is : ' + conAccountName);
 
  /*
Create a Map<String, Integer> to store group name and member count
   -  Add 5 items into this Map 
   -  Check if there is a group called Apex Soldiers 
      -  print out the result in boolean 
   -  Check if there is a group called Winterfell Vacation
      -  if so , store the value into a Variable called vMemberCount
         -  remove this group from the map 
         -  add new item to the map with below key-value pair
            -  Winterfell Coders as key , value of vMemberCount as value
   -  Check if there is a group with 10 members
      -  if so , decrease the value to 9 
      */

      Map<String,Integer> groupMap = new Map<String,Integer>();
      groupMap.put('Apex Soldiers', 10);
groupMap.put('Winterfell Vacation', 9);
groupMap.put('Trigger Trickers', 8);
groupMap.put('Flownatics', 7);
groupMap.put('API Callers', 11);

Boolean doesContain = False;
Integer vMemberCount;

if(groupMap.keySet().contains('Apex Soldiers')){
doesContain = true;
}
System.debug('doesContain value is : ' + doesContain);

if(groupMap.keySet().contains('Winterfell Vacation')){
vMemberCount = groupMap.get('Winterfell Vacation');
System.debug('vMemberCount value is : ' + vMemberCount);
groupMap.remove('Winterfell Vacation');
groupMap.put('Winterfell Coders', vMemberCount);
System.debug('groupMap value is : ' + groupMap);

}

for(Integer each : groupMap.values()) {
    System.debug('Current value : ' + each);
    if(each == 10){
       
    }
}

Fruit apple = new Fruit();
Integer cnt = Fruit.count;
System.debug('cnt value is : ' + cnt);

Integer result = CustomMath.factorial(5);
System.debug('Result is '+ result);

InterviewOpportunity.updateOppCloseDate('Kadir Y');

  
AggregateResult averageAmount = [SELECT AVG(Amount) avgAmount
  FROM Opportunity
WHERE AccountId = '001Dn00000E6jldIAB' AND StageName = 'Closed Won'];

    System.debug(averageAmount.get('avgAmount'));

    InterviewOpportunity.calculateAverageAmount('001Dn00000E6jleIAB');

    String bestSellingProduct = InterviewOpportunity.getBestSellingProduct();
    System.debug('bestSellingProduct value is : ' + bestSellingProduct);
    

    List<Account> accsWithOpportunities = [SELECT Id, Name, (SELECT Id, Name, StageName, Amount FROM Opportunities) 
    FROM Account];
System.debug(accsWithOpportunities.size());
List<Opportunity> allOppList = new List<Opportunity>();
for (Account each :accsWithOpportunities ){
    //Opportunity eachOpp = each.Opportunities.get(0);
    //System.debug(eachOpp.Name);
    List<Opportunity> OppList = each.Opportunities;
    System.debug(OppList.size());
    //if(OppList != null && !OppList.isEmpty()){
        allOppList.addAll(OppList);
    //}
}
System.debug(allOppList.size());
  