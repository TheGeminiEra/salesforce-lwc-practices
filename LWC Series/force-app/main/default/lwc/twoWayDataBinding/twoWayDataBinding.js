import { LightningElement, track } from 'lwc';

export default class TwoWayDataBinding extends LightningElement {
    @track fullname = "Lai Trương";
    @track tile = "Salesforce Developer";

    // Component doesn't rerender.
    // this.fullName.firstName = 'Mark';

    // Component rerenders.
    // @track fullName = { firstName : '', lastName : '' };
    // this.fullName.firstName = 'Mark';

    changeHandler(event) {
        console.log(this[event.target.name]);
        console.log(event.target.value);
        console.log(event.target.name);
        // this[event.target.name] = event.target.value;
        this.event.target.name = event.target.value;
    }
}