/*
7. Similar to above task 
  1. now create two String variables to store firstName and lastName
  2. create a variable called leadCount as Integer and initialize to 5
  2. Create an empty List of String 
  3. using loop generate sample lead email in below format and add it to the list
  
  firstNameValue+lastNameValue_1@force.com
  firstNameValue+lastNameValue_2@force.com
  firstNameValue+lastNameValue_3@force.com
  firstNameValue+lastNameValue_4@force.com
  firstNameValue+lastNameValue_5@force.com
  

  4. try changing the leadCount and run your code again 
  */
Integer leadCount = 5;
String firstName = 'Adam', lastName = 'Smith';
List<String> emailList = new List<String>();
for(Integer i = 1; i <= leadCount; i++){
    String sampleEmail = firstName + lastName + '_' + i + '@force.com';
    emailList.add(sampleEmail);
}
System.debug(emailList);
System.debug(emailList.size());