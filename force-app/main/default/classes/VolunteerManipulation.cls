//Done by Mohammed Azad
//Done 3/8/2022
public with sharing class VolunteerManipulation {
    public static void insertSingleOne(String nameHolder, String emailHolder, String phoneHolder) {
        Volunteer__c insertingThisOne = new Volunteer__c(Name__c = nameHolder, Email__c = emailHolder, Phone_Number__c = phoneHolder);
        insert(insertingThisOne);
    }
    public static void deleteSingleOne(String deleteName){
        List<Volunteer__c> volunteerdeleter = [SELECT Name__c FROM Volunteer__c WHERE Name__c =: deleteName];
        delete volunteerdeleter;

    }
    public static void massInsertionOfRecord() {
        
        Volunteer__c volone = new Volunteer__c(Name__c='Billy', Email__c='Billy@email.com', Phone_Number__c='1234567890');
        Volunteer__c voltwo = new Volunteer__c(Name__c='Bobby', Email__c='Bobby@email.com', Phone_Number__c='1234567890');
        Volunteer__c volthree = new Volunteer__c(Name__c='Jenny', Email__c='Jenny@email.com', Phone_Number__c='1234567890');
        Volunteer__c volfour = new Volunteer__c(Name__c='Jiffy', Email__c='Jiffy@email.com', Phone_Number__c='1234567890');
        Volunteer__c volfive = new Volunteer__c(Name__c='Tiffany', Email__c='Tiffany@email.com', Phone_Number__c='1234567890');
        Volunteer__c volsix = new Volunteer__c(Name__c='Gerald', Email__c='Gerald@email.com', Phone_Number__c='1234567890');
        Volunteer__c volseven = new Volunteer__c(Name__c='Eugene', Email__c='Eugene@email.com', Phone_Number__c='1234567890');
        Volunteer__c voleight = new Volunteer__c(Name__c='Harold', Email__c='Harold@email.com', Phone_Number__c='1234567890');
        Volunteer__c volnine = new Volunteer__c(Name__c='Margaret', Email__c='Margaret@email.com', Phone_Number__c='1234567890');
        Volunteer__c volten = new Volunteer__c(Name__c='Stephanie', Email__c='Stephanie@email.com', Phone_Number__c='1234567890');
        Volunteer__c voleleven = new Volunteer__c(Name__c='Larry', Email__c='Larry@email.com', Phone_Number__c='1234567890');
        Volunteer__c voltwelve = new Volunteer__c(Name__c='Martha', Email__c='Martha@email.com', Phone_Number__c='1234567890');
        Volunteer__c volthirteen = new Volunteer__c(Name__c='Bertha', Email__c='Bertha@email.com', Phone_Number__c='1234567890');
        Volunteer__c volfourteen = new Volunteer__c(Name__c='John', Email__c='John@email.com', Phone_Number__c='1234567890');
        Volunteer__c volfifteen = new Volunteer__c(Name__c='Joe', Email__c='Joe@email.com', Phone_Number__c='1234567890');
        Volunteer__c volsixteen = new Volunteer__c(Name__c='Cloe', Email__c='Cloe@email.com', Phone_Number__c='1234567890');

        List<Volunteer__c> volunteerInsertionList = new List<Volunteer__c>();
        
        volunteerInsertionList.add(volone);
        volunteerInsertionList.add(voltwo);
        volunteerInsertionList.add(volthree);
        volunteerInsertionList.add(volfour);
        volunteerInsertionList.add(volfive);
        volunteerInsertionList.add(volsix);
        volunteerInsertionList.add(volseven);
        volunteerInsertionList.add(voleight);
        volunteerInsertionList.add(volnine);
        volunteerInsertionList.add(volten);
        volunteerInsertionList.add(voleleven);
        volunteerInsertionList.add(voltwelve);
        volunteerInsertionList.add(volthirteen);
        volunteerInsertionList.add(volfourteen);
        volunteerInsertionList.add(volfifteen);
        volunteerInsertionList.add(volsixteen);

        insert volunteerInsertionList;
    }
}