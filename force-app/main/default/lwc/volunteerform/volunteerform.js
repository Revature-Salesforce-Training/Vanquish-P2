/*Author - Gabriela Conrado*
 * @Date - 03/08/2022*
 * @Description - This creates a new volunteer form*/
import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent'; 

//importing the relevant objects and their associated inforamtion 
import VOLUNTEER from '@salesforce/schema/Volunteer__c';
import VOLUNTEER_NAME from '@salesforce/schema/Volunteer__c.Name__c'
import EMAIL from '@salesforce/schema/Volunteer__c.Email__c';
import PHONENUMBER from '@salesforce/schema/Volunteer__c.Phone_Number__c'
import ADDRESS from '@salesforce/schema/Volunteer__c.Address__c';
import POSSIBLEJOIN from '@salesforce/schema/Volunteer__c.possiblejoin__c';
import STATUS from '@salesforce/schema/Volunteer__c.Requested_Status__c'



export default class Volunteerform extends LightningElement {
    objectApiName = VOLUNTEER;
    fields = [
        VOLUNTEER_NAME,
        EMAIL,
        PHONENUMBER,
        ADDRESS,
        POSSIBLEJOIN,
        STATUS
    ];
    handleSuccess(event) {
        const env = new ShowToastEvent({
            title: 'Thanks, we got it!',
            message: 'Thank you for wanting to join the team.',
            variant: 'success',
        });
        this.dispatchEvent(env);
    }
    handleSubmit(event){
        const success = new ShowToastEvent({
            title: 'Thanks, we got it!',
            message: 'Thank you for wanting to join the team.',
            variant: 'success',
        });
        this.dispatchEvent(success);
    }
    handleCancel(event) {
        const anotherEvent = new ShowToastEvent({
            title: "Maybe Next Time!",
            message: "Maybe Next Time!",
            variant: "warning",
        });
        this.dispatchEvent(anotherEvent);
    }
}