//Done by Mohammed Azad
@isTest
private class VolunteerTest {
    static testMethod void insertionValidation() { 
    	Volunteer__c tester = new Volunteer__c(Name__c='Bobby', Email__c='test123@email.com', Phone_Number__c='1234567890');
        insert tester;
        tester = [SELECT Name__c, Phone_Number__c FROM Volunteer__c WHERE Name__c =: tester.Name__c];
    }
}