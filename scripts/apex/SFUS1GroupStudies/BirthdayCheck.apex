/*1- Create a variable named 'birthdayofCustomer' and assign a date,
2- check if today is the birthday of the customer 
and store the result (true or false )into a variable */


Date birthdayOfCustomer = Date.newInstance(2000, 03, 01);
Boolean isBirthday = false;

Date currentDay = Date.today();
if (birthdayOfCustomer.day()==currentDay.day()&& birthdayOfCustomer.month()==currentDay.month()){
    isBirthday = true;
}
System.debug('is today birthday of the customer:' + isBirthday);

//Time primitive data type demo:
//Time t = Time.newInstance(05, 70, 30, 30).addHours(-3);
//System.debug(t);
Time myTime = Time.newInstance(10, 30, 16, 59) ;
System.debug('myTime value is : ' + myTime);







