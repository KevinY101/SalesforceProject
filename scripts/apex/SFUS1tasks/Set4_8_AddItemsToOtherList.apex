/*
8. Create a program that take some item from One List to Another according to the condition 
  1. Create List of Integer with 9 elements|items 
  2. Create another empty List of Integer 
  3. Iterate over the first List using for each loop 
    - check if the number is between 5-10 
      - if so add this number to second list using secondList.add(itemHere) ; 

  4. Print out the first List 
  5. Print out the second List and it's size
  */
List<Integer> nums = new List<Integer>{5,6,7,8,84,25,45,4,10};

List<Integer> numsBetween5and10 = new List<Integer>();

for(Integer each : nums){
    if (each>=5 && each<=10){
        numsBetween5and10.add(each);
    }
}

System.debug(nums);

System.debug(numsBetween5and10);
System.debug('Size of the numsBetween5and10 list is: '+ numsBetween5and10.size());

//List the numbers in the nums list in ascending order then descending order
nums.sort();
System.debug(nums);
List<Integer> numsInDescendingOrder = new List<Integer>();
for (Integer i = nums.size()-1; i>=0; i--){
    Integer numberAtIndexI = nums.get(i);
    numsInDescendingOrder.add(numberAtIndexI);
}
System.debug(numsInDescendingOrder);

