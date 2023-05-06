/*
5. Create a List of 10 names into List of String with some duplicate value 
   find out how many unique names showed up in the list using below approach
   1. create an empty Set of String 
   2. Iterate over names List using for each loop
   3. use add method of Set to add each items into Set
   4. outside the loop print out the size of set
   */

List<String> namesList = new List<String>{'jon','adam', 'hagi', 'smith', 'leila','jon','adam', 'hagi', 'smith', 'leila'};

Set<String> namesSet = new Set<String>();

for (String each: namesList){
    namesSet.add(each);
}

System.debug('Size of the namesSet: '+ namesSet.size());

/*Set<String> namesSet2 = new Set<String>();
namesSet2.addAll(namesList);
System.debug(namesSet2);
*/