/*
Create a List of 5 String values 
   - create a Boolean variable called isAllPalindrome and set to true
   - loop through each item in the list 
      - check if the word is palindrome or not 
      - if it's not, set isAllPalindrome to false
      - else take no action (so no else)
*/
List<String> wordList = new List<String>{'kayak', 'wow', 'noon', 'level', 'rotator'};

Boolean isAllPalindrome = true;
for(String each : wordList) {
   if (each != each.reverse()){
      isAllPalindrome = false;
      break;
   }
}
System.debug('isAllPalindrome value is : ' + isAllPalindrome); 
   