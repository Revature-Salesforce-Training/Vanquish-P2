/*
*@Author - Martin Luna II*
*@Date - 03/08/2022*
*@Description - This test clase was created to test the donationChatter Method* 
*/
@isTest
public with sharing class donationChatterTest {

    @isTest
    static void donationChatterTest() {
        test.startTest();
        donationChatter.donationChatter();
        Donation__c donation = new Donation__c();
                    donation.First_Name__c = 'Test';
                    donation.Last_Name__c = 'Data';
                    donation.Home__c = String.valueOf('5555555555');
                    donation.Mobile__c = String.valueOf('5555555555');
                    donation.Email__c = 't.one@example.com';
                    donation.Amount__c = 1000;
                    insert donation;
                    donationChatter.donationChatter();
        List<Donation__c> createdD = [SELECT First_Name__c,Amount__c FROM Donation__c];

        System.assertEquals(1, createdD.size(), '1 Donation record should be returned');
        test.stopTest();
    }
}