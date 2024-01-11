import getContacts from "@salesforce/apex/ContactController.getContacts";
import { LightningElement, wire } from "lwc";
export default class ReviewExercise4 extends LightningElement {

//@wire(getContacts)
//cons;

cons;
error;

@wire(getContacts)
consFromApex({data, error}){

    if(data){
        this.cons = data;
        this.error = undefined;
        console.log(this.cons);
    }else if(error){
        this.data = undefined;
        this.error = error;
        console.log(this.error);
    }
}



}

