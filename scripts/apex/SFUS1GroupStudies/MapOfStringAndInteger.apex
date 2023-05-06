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
    Map <String, Integer> groupMap = new  Map <String, Integer>();
    groupMap.put('Apex Soldiers', 10);
    groupMap.put('Winterfell Vacation', 9);
    groupMap.put('Trigger trickers', 8);
    groupMap.put('Flownatics', 7);
    groupMap.put('Api Callers', 12);

    //Check if there is a group called Apex Soldiers
    Boolean containsApexSoldiers = false;
    if(groupMap.containsKey('Apex Soldiers')){
        containsApexSoldiers = true;
    }
    System.debug('containsApexSoldiers value is : ' + containsApexSoldiers); 

    Integer vMemberCount = 0;
    if(groupMap.containsKey('Winterfell Vacation')){
        vMemberCount = groupMap.get('Winterfell Vacation');
    
    }

    groupMap.remove('Winterfell Vacation');
    System.debug('groupMap value is : ' + groupMap); 

    //add new item to the map with below key-value pair
    //-  Winterfell Coders as key , value of vMemberCount as value
    groupMap.put('Winterfell Coders', vMemberCount);

    System.debug('groupMap value is : ' + groupMap); 

    //Check if there is a group with 10 members
     // -  if so , decrease the value to 9

     for (String eachKey : groupMap.keySet()){
        if (groupMap.get(eachKey) == 10){
            groupMap.put(eachKey, 9);
        }
     }
     System.debug('groupMap value is : ' + groupMap); 

