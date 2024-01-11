import { LightningElement } from "lwc";
export default class ReviewParent extends LightningElement {
  parentMessage = "Parent Message";
  handleChildTell(event) {
    //event.detail give us the data sent from the child
    console.log(event.detail);
    this.parentMessage = "Child told you something " + event.detail;
  }
}
