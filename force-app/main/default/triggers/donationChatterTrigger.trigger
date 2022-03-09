/*
*@Author - Martin Luna II*
*@Date - 03/08/2022*
*@Description - This trigger fires when a new Donation record is created. 
*/

trigger donationChatterTrigger on Donation__c (after insert) {
    if(Trigger.isInsert){
        donationChatter.donationChatter();
    }
}