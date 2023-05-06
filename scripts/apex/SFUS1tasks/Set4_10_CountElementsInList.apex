/*
10. Write a program that takes a list of integers that represent the amounts of money spent by a set of users, and calculates the number of users who spent more than a certain amount (like 10000) of money.
in another word, create a list of Integer and get the count of numbers that over 10000 
*/

List<Integer> amounts = new List<Integer>{20000, 25000, 5000, 2500, 30000, 9000};

Integer countHighAmounts = 0;
Integer highAmount = 10000;

for(Integer eachAmount : amounts){

    if(eachAmount >= highAmount){
        
        countHighAmounts += 1;
    }

}

System.debug(countHighAmounts);