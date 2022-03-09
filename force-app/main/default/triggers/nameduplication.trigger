//Done by Mohammed Azad
//Date 3/7/2022
trigger nameduplication on Volunteer__c (before insert) {
    List<Volunteer__c> volunteerList = [SELECT Name__c FROM Volunteer__c];
    for (Volunteer__c prev : volunteerList) {
        for (Volunteer__c newChecker : Trigger.new) {
            if (newChecker.Name__c == prev.Name__c) {
                newChecker.Name__c.addError('Sorry, you already applied.');
            }
        }
    }
}