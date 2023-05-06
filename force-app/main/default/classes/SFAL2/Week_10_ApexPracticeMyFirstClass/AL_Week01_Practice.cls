public class AL_Week01_Practice {
    public static void sayHello() {

     //this is a single line comment
    /*
    This is
    a multiline 
    comment
    */
            
     	//Common primitive data types and declaring a variable
        
        //DataType variableName = value (declaring value is optional);
        String name = 'Jon'; //enclosed by single quotes, all statements are ended with semicolon
        String myVariableNameInCamelCase = 'CamelCase';
        
        //how to print out to the console
        System.debug('Jon');
        System.debug(name);
        
        //Escape sequences 
        //\b (backspace), \t (tab), \n (line feed), \f (form feed), 
        //\r (carriage return), \" (double quote), \' (single quote), and \\ (backslash
        System.debug('Let\'s go to party');
        
        
        //Variable Data types that can store whole Number  
        Integer amount = 100;
        Long bigAmount = 10000000000L;
        
        //variables Data type that can store fractional Number
        Double pi = 3.14D;
        Decimal price = 25.99;
        
        //Boolean data type: A value that can only be assigned true, false, or null
        Boolean isClosedWon = false;
        isClosedWon = true;
        System.debug('Value of isClosedWon boolean variable ' + isClosedWon);
        
        //Id Data type: Any valid 18-character Lightning Platform record identifier.
        // It's almost like specialized String variable 
        // that only store string with valid record Id format
        // if anything else is stored, it will throw an error
        
        ID myContactID = '00300000003T2PGAA0'; //go to your org and grab a record ID
        System.debug(myContactID);
        
        
        //String concatenation (combining one or more String together)
        System.debug('My name is ' + name);
        Integer age = 25;
        System.debug('I am ' + age + 'years old');
        
        //Arithmetic Operators  (+ - * /) 
        Integer num1 = 200 ; 
        Integer num2 = 20 ; 
        Integer result ; 
        
        // addition 
        result = num1+ num2 ; 
        
        System.debug('The addition result between ' + num1 + ' and ' + num2 + ' is ' +  result );
        
        // subtraction 
        result = num1 - num2 ; 
        System.debug('The subtraction result between ' + num1 + ' and ' + num2 + ' is ' +  result );
        
        // multiplication 
        result = num1 * num2 ; 
        System.debug('The multiplication result between ' + num1 + ' and ' + num2 + ' is ' +  result );
        
        // division 
        result = num1 / num2 ; 
        System.debug('The division result between ' + num1 + ' and ' + num2 + ' is ' +  result );
        
        
        //Comparison operators (> , >= , == ,<> , != , <= , <)
        
        Integer num4 = 40, num5 = 50, num6 = 60;
        
        Boolean isNum6GreaterThanNum5 = num6 > num5 ;
        System.debug('is Num6 Greater Than Num5: '+ isNum6GreaterThanNum5);
        
        Boolean isNum6EqualNum5 = num6 == num5 ;
        System.debug('is Num6 Equal Num5: '+ isNum6EqualNum5);
        
        Boolean isNum6NotEqualNum5 = num6 != num5 ;
        System.debug('is Num6 Not Equal Num5: '+ isNum6NotEqualNum5);
        
        String language = 'Apex';
        System.debug('Is language equal APEX? ' + (language == 'APEX'));
        
        //Logical operators (AND &&, OR ||, NOT !)
        
        // is num4 more than 20 and less than 45 
        Boolean isNum4Between20And45 =  (num4 > 20) && (num4< 45) ;   //true
        System.debug('is '  + num4 + ' Between 20 And 45 : ' + isNum4Between20And45);  //true
        
        // Check if num5 is greater than 100 or less than 20 ;            
        Boolean isNum5Greater100OrLessThan20 =  (num5>100) || (num5<20) ;  //false
        System.debug('is num5 is greater than 100 or less than 20 ' + isNum5Greater100OrLessThan20);
        
        System.debug( isNum4Between20And45  ); //true
        // Logical NOT(!) can be used on any boolean variable or anything that return boolean 
        // and return opposite value,  true==> false and false==> true
        System.debug(!isNum4Between20And45 );  //false
        
        //Conditional statements 
        
        //if-else statement (else is optional)
        
        Integer score = 70;
        
        //if exam score is more than 66 
        // show debug message passed,
        //otherwise show failed
        
        if (score>=65){
            System.debug('Passed');
        }else{
            System.debug('Failed');
        }
        
        // Multi Branch if statement 
        
        // if the score is less than 0 or more than 100 
        // print invalid score 
        // if the score is more than 90 print A 
        // if the score is between 80 and 90 print B
        // if the score is between 70 and 80 print C
        // else print work harder 
        
        Integer score2 = 99 ; 
        
        if( score2 > 100 || score2 <0 ){
            System.debug('Invalid Score');
        }else if(score2 > 90){
            System.debug('You got A');
        }else if(score2 > 80){
            System.debug('You got B');
        }else if(score2 > 70 ){
            System.debug('You got C');
        }else{
            System.debug('Try Harder');
        }
        
        //switch statement : 
        
        
        String season = 'summer' ; 
        
        /*
if it's spring  print  Go Camping 
if it's summer  print  Go Swimming 
if It's fall    print  Go Pick Pumpkin
if it's winter  print  Go to sleep 
if nothing matches print invalid season 
*/
        
        switch on season {
            when 'spring'{
                System.debug('Go Camping ');
            }
            when 'summer' {
                System.debug('Go Swimming ');
            }
            when 'fall' {
                System.debug('Go Pick Pumpkin ');
            }
            when 'winter' {
                System.debug('Go to sleep ');
            }
            when else {
                System.debug('Invalid Season ');
            }
        }
        


    }
}