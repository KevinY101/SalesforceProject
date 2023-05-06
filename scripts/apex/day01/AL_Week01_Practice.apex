
//Where can we write our code? 
    //1- Setup--> Apex Classes --> New
    //2- Developer Console
    //3- VSCode
    
    //Where to run (execute) our code? Debug --> Open Execute Anonymous Window (No main method like Java) 
    //Shortcut --> Command + E or Ctrl +E
    
    //This is a one line comment
    /* This is a multiline
    comment 1
    comment 2 
    comment 3
    */
    
    //How to print in Apex?
    System.debug('Hello World'); //use single quotes, click execute, always check Open Log, on the execution log check "debug only",
    //if you forget checking "open logs", you can find your logs under "Logs" tab.
    
    //Apex is case-insensitive language but do not use like that, use the appropriate naming conventions
    sYsteM.dEBug('Hello world');

    //Troubleshooting: Not so helpful, generally shows the next line as an error statement
    //Delete the semicolon and display the error message
    
    // If the single quote need to be used inside String
	// It will accidentally end the string 
	// you can add backslash right in front of it 
    // Share the "Escape Sequences in Apex.png" file on Discord class chat
	// to instruct computer not to treat it as ending of the string
	// just treat it as part of the text
	System.debug('Let\'s learn variable');
	
    // Creating and using variable
    //DataType variableName = someValueHere 
    //variableName starts with lowercase and we use camelCase, no space, cannot start with  number,
    //and no special character other than underscore (_)
    
    String name = 'SF User';
    //print the value of the variable in the log 
    System.debug(name);
    
    // Concatenation is
    // combining one or more String together
    // print  My Name is : theValueOfNameVariable
    System.debug('My Name is : ' + name );
    
    // give a new value to variable you already created earlier
    name = 'Kevin'; 
    System.debug('My new name is ' + name );

    // variables Data type that can store whole Number  

    Integer score = 66 ;
    // print passing score is theValueOfTheScoreVariable
    System.debug('Passing score is ' + score);
    
    //score = 86 ; 
    
    System.debug('The result is '  +   score + 20  ); // 6620 
    System.debug('The result is '  +   (score + 20)  );  // 86
    
    
    Long distanceToMars = 10000000000000L; 
    System.debug('Distance to Mars long value ' + distanceToMars);
    
    
    
    // variables Data type that can store fractional Number  
    Decimal pi = 3.14 ; 
    System.debug('The value of pi: '  + pi  );
    
    Double price = 199.99D ; 
    System.debug('The price value is ' + price);
    
    
    
    // variables Data type that can store true or false 
    Boolean passed = true ; 
    System.debug('Value of passed boolean variable ' + passed);
    // change the value to false and print it out 
    passed = false ; 
    System.debug('Value of passed boolean variable ' + passed);
    
    
    // variable Data type that can store Salesforce Record Id
    // It's almost like specialized String variable 
    // that only store string with valid record Id format
    // if anything else is stored, it will throw an error
    ID myLeadId = '00Q8W00000gDbIyUAK';
    System.debug(myLeadId);


    // Operator  + - * / 
    Integer num1 = 200 ; 
    Integer num2 = 20 ; 
    Integer result ; 
    // Use these 2 variables to print out below result (also a concatenation exercise)
    /*
     The addition result between num1 and num2 is resultGoesHere
     The subtraction result between num1 and num2 is resultGoesHere
     The multiplication result between num1 and num2 is resultGoesHere
     The division result between num1 and num2 is resultGoesHere
    */
    // addition (plus + sign)
    result = num1+ num2 ; 
    
    System.debug('The addition result between ' + num1 + ' and ' + num2 + ' is ' +  result );
    
    // subtraction (minus - sign)
    result = num1 - num2 ; 
    System.debug('The subtraction result between ' + num1 + ' and ' + num2 + ' is ' +  result );
    
    // multiplication (asterisk * sign)
    result = num1 * num2 ; 
    System.debug('The multiplication result between ' + num1 + ' and ' + num2 + ' is ' +  result );
    
    // division (forward slash / sign)
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
        
        Integer score1 = 70;
        
        //if exam score is more than 66 
        // show debug message passed,
        //otherwise show failed
        
        if (score1>=65){
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
        
        

   
    