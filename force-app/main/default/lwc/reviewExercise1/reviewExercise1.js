import { LightningElement } from "lwc";

export default class ReviewExercise1 extends LightningElement {
  message = "Hello World";
  price = 0;

  handleChange(event) {
    this.message = event.target.value;
  }

  handlePriceChange(event) {
    this.price = event.target.value;
  }
  get doubledPrice() {
    var x= this.price * 2;
    return x + "  " + this.message;
  }
}
