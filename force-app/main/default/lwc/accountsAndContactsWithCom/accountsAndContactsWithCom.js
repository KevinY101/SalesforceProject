import accountsAndContacts from "@salesforce/apex/AccountsAndContactsThatIncludesCom.accountsAndContacts";
import { LightningElement, wire } from "lwc";
//import { ShowToastEvent } from "lightning/platformShowToastEvent";

export default class accountsAndContactsWithCom extends LightningElement {
  accList;
  conList;
  error;

  accColumns = [
    { label: "Id", fieldName: "Id" },
    { label: "Account Name", fieldName: "Name" },
    { label: "Website", fieldName: "Website" }
  ];

  conColumns = [
    { label: "Id", fieldName: "Id" },
    { label: "Contact Name", fieldName: "Name" },
    { label: "Email", fieldName: "Email" }
  ];

  @wire(accountsAndContacts)
  objectList({ data, error }) {
    if (data) {
      this.accList = data[0];
      this.conList = data[1];

      /*if (this.accList.length > 0 || this.conList.length > 0) {
        this.showToast("Success", "Records Found", "success");
      }*/
      console.log(this.accList);
      console.log(this.conList);
    }else if(error){
        this.error = error;
    }
  }

 /*showToast(title, message, variant) {
    const toastEvent = new ShowToastEvent({
      title: title,
      message: message,
      variant: variant
    });
    this.dispatchEvent(toastEvent);
  }*/
}