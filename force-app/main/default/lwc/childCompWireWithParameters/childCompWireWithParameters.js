import { LightningElement, wire } from "lwc";
import getAccountList from "@salesforce/apex/AccountHelperForWireWithParameters.getAccountList";
export default class ChildCompWireWithParameters extends LightningElement {
  //@track record;
  //@track error;
  @wire(getAccountList, { accountNumberRequired: true })
  accountList; // directly storing data into variable/property
  //The @wire basically store two objects in the preferred property name like in above example, It will store data and error in accountList. So you can use the data using accountList.data and error using accountList.error.
  /*wiredAccount({ error, data }) {
    if (data) {
      this.record = data;
      this.error = undefined;
    } else if (error) {
      this.error = error;
      this.record = undefined;
    }
  }*/
}
