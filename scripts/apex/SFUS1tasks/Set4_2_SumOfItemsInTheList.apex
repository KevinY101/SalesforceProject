/*
2. Write a program that store the even numbers from 1 to 20 into List of Integer

  then write an apex code to get the sum of all items in the list. 
  */

  List <Integer> evenNumbers = new List <Integer>();

  for(Integer i = 1; i<=20; i+=2){
    evenNumbers.add(i);
  }
  System.debug(evenNumbers);

  Integer sum = 0;
  for(Integer each: evenNumbers){
    sum += each;
  }
  System.debug('Sum of even numbers in the list: ' + sum);
