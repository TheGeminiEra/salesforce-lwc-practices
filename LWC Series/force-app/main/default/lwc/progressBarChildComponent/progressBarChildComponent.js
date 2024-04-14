import { LightningElement, api } from 'lwc';

export default class ProgressBarChildComponent extends LightningElement {
    @api percentage;
    get getStyle() {
        console.log('xxxxxx Percentage Chill = ' + this.percentage);
        return 'width:' + this.percentage + '%';
    }
}