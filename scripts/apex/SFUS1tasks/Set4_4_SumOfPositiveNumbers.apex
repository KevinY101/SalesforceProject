/*
4. Write a program that store 10 Long(data type) values into List of Long 
   (it should be combination of positive and negative numbers) 

   print out the sum of positive numbers 
   print out the count of positive numbers 
   print out the count of negative numbers 
   */

List <Long> numbers = new List<Long>{1236547899, 463217895, 214632547, 543217895, 46879595,411111895, -136547899, -563217895,-214632547, -46879595};

Long sumOfPositives = 0;
Long sumOfNegatives = 0;
Integer countOfPositives = 0, countOfNegatives = 0;

for (Long each : numbers){
    if (each > 0){
        sumOfPositives += each;
        countOfPositives++;
    }
    if (each < 0){
        sumOfNegatives += each;
        countOfNegatives++;
    }
}

System.debug('sumOfPositives: ' + sumOfPositives + ' sumOfNegatives:' + sumOfNegatives);
System.debug('countOfPositives: '+ countOfPositives +' countOfNegatives: '+ countOfNegatives);