/*
*@Author - Gabriela Conrado*
*@Date - 03/08/2022*
*@Description - This test clase was created to test UpdatePriority Method* 
*/
@isTest
public class UpdatePriorityTest {
    /*Creating my data*/
    /*Create a surrender form with all the required field */

    @isTest
    static void UpdatePriorityTest() {
        Surrender_Form__c sForm= new Surrender_Form__c();
                          sForm.Address__c = 'Test address';
                          sForm.City__c='Houston';
                          sForm.Date__c= Date.today();
                          sForm.Email__c='testing@gmail.com';
                          sForm.First_Name__c='TestingName';
                          sForm.Last_Name__c='TestingLastName';
                          sForm.Phone__c='123456789';
                          sForm.State__c='Texas';
                          sForm.Priority__c='';
        				  sForm.Zip_Code__c=778;
                          insert sForm; 
                          UpdatePriority.updatePriority();
                        
 //Query test data that was just created
List<Surrender_Form__c> createdSF = [SELECT State__c, Priority__c From Surrender_Form__c];

//Ensure 1 record was created
System.assertEquals(1, createdSF.size(),'1 surrender form record should be returned');

//Loop through Surrender_Form__c to ensure the High was correctly assigned as Priority__c
for(Surrender_Form__c surForm : createdSF){
    System.assertEquals('High', surForm.Priority__c,'Priority should be High');
}

}

}