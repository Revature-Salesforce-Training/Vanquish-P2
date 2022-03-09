/*
*@Author - Martin Luna II*
*@Date - 03/08/2022*
*@Description - This class creates a chatter post on the Donation object.
*/

public with sharing class donationChatter {
    public static void donationChatter() {
        
        String First_Name_c;
        Donation__c donation = new Donation__c();

        if (String.isEmpty(First_Name_c)){
            try{
                Id recordId = ApexPages.currentPage().getParameters().get('recordId');
                if(recordId.getsObjectType() == Donation__c.SObjectType){
                    FeedItem post = new FeedItem();
                    post.ParentId = recordId;
                    post.Body = 'We have a new donation to the agency!';
                    insert post;
                }
            }catch(Exception e){
                System.debug(e);
            }
        }
    }
}