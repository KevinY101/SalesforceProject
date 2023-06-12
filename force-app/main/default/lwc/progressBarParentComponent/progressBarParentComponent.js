import { LightningElement } from 'lwc';

export default class ProgressBarParentComponent extends LightningElement {
    
    percentage = 10;

    changeHandler(event) {
        // if empty set it to 0 
        if (!event.target.value) {
            this.percentage = 0;
        } else {
            this.percentage = parseInt(event.target.value, 10);
            // if go over range set it to 100
            if (this.percentage > 100) {
                this.percentage = 100
            }
        }
    }

}