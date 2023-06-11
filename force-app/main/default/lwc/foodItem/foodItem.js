import { LightningElement, api } from "lwc";
export default class FoodItem extends LightningElement {

    // item = {
    //     foodName: 'Pizza',
    //     calories: 2000
    // }
    @api
    item; 

    handleClick() {
        // this is how we get the name of the food item 
          console.log(this.item.foodName);
          
        // this is how we can create event called pick 
        // and send data a long with it by providing 
        // second parameter as object {detail:ThePrimitiveDataYouWantToSend}
        const myEvent = new CustomEvent("pick", {
          detail: this.item.foodName
        });
          this.dispatchEvent(myEvent); 
          
      
      }

}