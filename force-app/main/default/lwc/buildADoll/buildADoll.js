import { LightningElement } from 'lwc';

//export default makes it available for outside use
export default class App extends LightningElement {

   yourName = 'Doll maker';
   dollyName = ' ';
   description = ' ';
   isHaunted = false;
   pictureUrl = "https://www.lifehacker.com.au/wp-content/uploads/sites/4/2022/10/14/PTV-chucky.png?quality=80&resize=1280,720"
   
    yourNameHandler(event) {

       this.yourName = event.target.value; // basically functions as scanner
    }

    dollyHandler(event) {

        this.dollyName = event.target.value; 

    }
    descHandler(event){

        this.description = event.target.value; 
    }

    HauntedHandler(event){

           this.isHaunted = event.target.checked;
        
    }
}