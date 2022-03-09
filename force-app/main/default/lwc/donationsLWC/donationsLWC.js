/* Done by Mohammed Azad on 03/08/2022 
   and makes the donation form work. */
import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


//importation of Donation object
import DONATION from '@salesforce/schema/Donation__c';


//importation of Donation fields
import FIRST_NAME from '@salesforce/schema/Donation__c.First_Name__c';
import LAST_NAME from '@salesforce/schema/Donation__c.Last_Name__c';
import HOME from '@salesforce/schema/Donation__c.Home__c';
import MOBILE from '@salesforce/schema/Donation__c.Mobile__c';
import EMAIL from '@salesforce/schema/Donation__c.Email__c';
import AMOUNT from '@salesforce/schema/Donation__c.Amount__c';

export default class Donations extends LightningElement {
    objectName = DONATION;
    objectFields=[
        FIRST_NAME,
        LAST_NAME,
        HOME,
        MOBILE,
        EMAIL,
        AMOUNT
    ]
//Suspected necessary toast events for relevant actions.
    handleSuccess(event) {
        const successenv = new ShowToastEvent({
            title: 'We appreciate it!',
            message: 'We appreciate it!',
            variant: 'success',
        });
        this.dispatchEvent(successenv);
    }
    handleSubmit(event){
        const submitter = new ShowToastEvent({
            title: 'Thanks!',
            message: 'Thanks for the thought!',
            variant: 'success',
        });
        this.dispatchEvent(submitter);
    }
    handleCancel(event) {
        const cancelEvent= new ShowToastEvent({
            title: "That's Okay!",
            message: "That's Okay!",
            variant: "warning",
        });
        this.dispatchEvent(cancelEvent);
    }


}