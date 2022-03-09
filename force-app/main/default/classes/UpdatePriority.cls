/*
*@Author - Gabriela Conrado*
*@Date - 03/08/2022*
*@Description - This class implements a soql query to look for the records which
 have Texas as State and populate the Priority field with the 'hight' value. 
*/
public class UpdatePriority {
  
       public static void updatePriority() {
            /* Getting a list with the required fields*/
             List <Surrender_Form__c> surForm=[SELECT State__c, Priority__c FROM  Surrender_Form__c WHERE State__c = 'Texas'];
            /* Loop through the list created previously and update the Priority__c field*/
            for (Surrender_Form__c surF : surForm) {
                    surF.Priority__c = 'High';
            }
            /* Save the change*/
            update surForm;
          } 

     


    
}