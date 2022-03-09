/*
*@Author - Gabriela Conrado*
*@Date - 03/08/2022*
*@Description - This trigger fires as soon as a new Surrender Form record is beinf inserted.It calls a method from 
the class UpdatePriority. 
*/


trigger UpdatePriorityClassTrigger on Surrender_Form__c (after insert) {
    if(Trigger.isInsert){
        UpdatePriority.updatePriority();
    }

}