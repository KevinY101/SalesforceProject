/*
1. Write a program that calculates the sum of all odd numbers from 1 to 100 using a for loop.
(try out the same with while loop and do while loop as practice)
*/
Integer sum = 0;
for(Integer i=1; i<=100; i+=2){
    sum +=i;
}
System.debug('the sum of all odd numbers from 1 to 100 is ' + sum);