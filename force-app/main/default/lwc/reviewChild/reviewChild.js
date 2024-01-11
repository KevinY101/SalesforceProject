import { LightningElement, api } from "lwc";
export default class ReviewChild extends LightningElement {
  @api
  message;

  handleChildClick() {
    const evt = new CustomEvent("tell", {
      detail: "From Child " + Math.random() * 1000
    });
    this.dispatchEvent(evt);
  }
}
