/*
Create a List of 10 String with your own values
   - create a Integer variable called randomIndex
   - assign the value to random Integer between (between 0-9)
   - use above index to print out the value at that index
   - (wait did we just crack how lottery system work?)*/

   List<String> contacts = new List<String>{'Adam','Ben', 'Che', 'David', 'Elden', 'Max', 'Lima', 'Mike', 'Nina', 'Ozzy'};
   Integer randomIndex = (Math.random()*10).intValue();
   System.debug('randomIndex: '+ randomIndex); 
   System.debug('The winner of the day is: ' + contacts.get(randomIndex));
   

   for(Integer i=1; i<=10 ;i++) {
      randomIndex = (Math.random()*10).intValue();
      System.debug('The winner of the day '+ i + ' is: ' + contacts.get(randomIndex));
   }
 