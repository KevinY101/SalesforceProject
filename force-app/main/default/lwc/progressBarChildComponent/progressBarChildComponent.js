import { LightningElement, api } from 'lwc';

export default class ProgressBarChildComponent extends LightningElement {
    @api
    percentage;

    get style() {
        return `width:${this.percentage}%`;
    }
}