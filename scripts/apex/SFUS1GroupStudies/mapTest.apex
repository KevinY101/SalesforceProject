
List<Account> accList = new  List<Account>(); 
 accList.add(   new Account(Name='Cydeo1')   ); 
 accList.add(   new Account(Name='Cydeo2')   ); 
 accList.add(   new Account(Name='Cydeo3')   ); 
 accList.add(   new Account(Name='Cydeo4')   ); 
 accList.add(   new Account(Name='Cydeo5')   ); 


 insert accList;  

Map<Id,Account> accMap = new  Map<Id,Account>( accList );
System.debug('accMap value is : ' + accMap); 