/*Author: Martin Luna II*/
import { LightningElement } from 'lwc';

/* Importing the Animal custom object from schema */
import ANIMAL_OBJECT from '@salesforce/schema/Animal__c';
import ANIMAL_NAME from '@salesforce/schema/Animal__c.Name';
import ANIMAL_NEUTERED from '@salesforce/schema/Animal__c.Neutered__c';
import ANIMAL_SEX from '@salesforce/schema/Animal__c.Sex__c';
import ANIMAL_TYPE from '@salesforce/schema/Animal__c.Type_of_Animal__c';
import ANIMAL_STATUS from '@salesforce/schema/Animal__c.Status__c';
/* Importing the ShowToastEvent*/
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class Surrender extends LightningElement {
    
    objectApiName = ANIMAL_OBJECT;
    fields = [ANIMAL_NAME, ANIMAL_NEUTERED, ANIMAL_SEX, ANIMAL_STATUS, ANIMAL_TYPE];
    
    handleSuccess(event) {
        const toastEvent = new ShowToastEvent({
            title: "Account created",
            message: "Record ID: " + event.detail.id,
            variant: "success"
        });
        this.dispatchEvent(toastEvent);
    }

    handleLoad(event){}
    handleCancel(event){}
    handleSubmit(event){}
    handleError(event){}
}