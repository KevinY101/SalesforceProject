import { LightningElement, track } from 'lwc';

export default class GetterSetter extends LightningElement {

defaultMsg = "We are learning ";
@track outputMessage;


get message(){
    return this.defaultMsg  + "Lightning Web Components";
//called on load of the component
//not getting called from handleMessage because it shows us a default message
//and that can only happen on ONLAD of component

}
set message(val){
    this.outputMessage = val;
    //populates the new output 
}
    handleMessage(event){
        this.message = event.target.value;
        //it calls the setter message with the new values
    }
}