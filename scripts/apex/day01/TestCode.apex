Set <String> colors = new Set <String> {'Yellow', 'Blue', 'Red', 'Blue'};

System.debug('the elements in the list: ' + colors);
//colors.sort();
System.debug('the size of the list: ' + colors.size());
//colors.size();
System.debug('the elements in the new list: ' + colors);

Map <String, String> country_currencies = new Map <String, String> {'US' => 'Dollar', 'FR' => 'Euro', 'TR' => 'Lira'};

System.debug('The map is: ' + country_currencies);
System.debug('The value for the key US: ' + country_currencies.get('US'));

//Print out 'Hello' five times using do-while loop
Integer i = 1;
do{
System.debug('Hello '+ i);
i++;
} while (i<=5);
