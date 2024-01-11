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
Map<String, Integer> groupMap = new Map<String, Integer>();
groupMap.put('Apex Soldiers', 10);
groupMap.put('Winterfell Vacation', 9);
groupMap.put('Trigger Trickers', 8);
groupMap.put('Flownatics', 7);
groupMap.put('API Callers', 11);

//Check if there is a group called Apex Soldiers
//-  print out the result in boolean
Boolean containsApexSoldiers = false;
if (groupMap.containsKey('Apex Soldiers')) {
  containsApexSoldiers = true;
}
System.debug('Map contains Apex Soldiers : ' + containsApexSoldiers);

//Check if there is a group called Winterfell Vacation
//if so , store the value into a Variable called vMemberCount
Integer vMemberCount;
if (groupMap.containsKey('Apex Soldiers')) {
  vMemberCount = groupMap.get('Winterfell Vacation');
  System.debug('vMemberCount is : ' + vMemberCount);
}

//remove this group from the map
groupMap.remove('Winterfell Vacation');

//add new item to the map with below key-value pair
//Winterfell Coders as key , value of vMemberCount as value
groupMap.put('Winterfell Coders', vMemberCount);
System.debug('groupMap value is : ' + groupMap);

//Check if there is a group with 10 members
//if so , decrease the value to 9
for (String each : groupMap.keySet()) {
  if (groupMap.get(each) == 10) {
    groupMap.put(each, 9);
  }
}
System.debug('groupMap value is : ' + groupMap);


