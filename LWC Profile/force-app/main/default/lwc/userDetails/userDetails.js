import { LightningElement, wire } from 'lwc';
import getUserInfo from '@salesforce/apex/UserInformationDetails.getUserInfo';
import Id from '@salesforce/user/Id';

export default class UserDetails extends LightningElement {
    @wire(getUserInfo, { userId: Id })
    userData;
}