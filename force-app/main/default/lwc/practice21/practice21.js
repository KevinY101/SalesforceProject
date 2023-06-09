import { LightningElement } from "lwc";
import getMaxOppAmount from "@salesforce/apex/AccountController.getMaxOppAmount";
import getAccountByName from "@salesforce/apex/AccountController.getAccountByName";
 
export default class Practice21 extends LightningElement {
    // property to display highestOppAmount
    highestOppAmount = 0; 
    // property to display result from getAccountByName method
    account = {}; 

    handleClick() {
        
        console.log('button clicked');
        // here we want to add a logic 
        // when the button is clicked
        // call apex method getMaxAmount
        // get the resulting number
        // assign it into highestOppAmount
        getMaxOppAmount().then(result => {
            console.log(result); // returned data from apex  9999999
            this.highestOppAmount = result; 
        } )                 
        

    }

    handleGetAccount() {
        // call the apex method with one fixed parameter value 'GenePoint'
        // then print the result and set the value of property to the result 
        getAccountByName({ accName: 'GenePoint' }).then(result => {
            console.log(result);
            this.account = result;
        }); 

        // // or catch the error if there is any error as below
        // getAccountByName({ accName: 'GenePoint' }).then(result => {
        //     console.log(result);
        //     this.account = result;
        // }).catch(error=>{
        //     console.log(error); 
        // }); 

    }

}