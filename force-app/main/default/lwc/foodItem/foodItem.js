import { LightningElement, api } from "lwc";
export default class FoodItem extends LightningElement {

    // item = {
    //     foodName: 'Pizza',
    //     calories: 2000
    // }
    @api
    item; 

}