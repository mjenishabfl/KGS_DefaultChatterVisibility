/**********************************************************************************************************
* Class Name: FeedItemTriggerHandlerTest
* Author: KGS
*
* ============================================================================================================
* ============================================================================================================
* Purpose: Test class to test the functionality for 'FeedItemTrigger'trigger and 'FeedItemTriggerHandler'apex class.
* ============================================================================================================
* ============================================================================================================
* History:
* VERSION     DATE                  INITIALS      DESCRIPTION/FEATURES ADDED
* 1.0         01-December-2021      KGS           Initial Development
***********************************************************************************************************/
@isTest
public class FeedItemTriggerHandlerTest {
    
    
    @isTest
    public static void positiveTestBeforeInsert(){
        
        Contact conObj =  FeedItemTestDataFactory.createContact();
        insert conObj;
        
        List<FeedItem> feedItemList = FeedItemTestDataFactory.createFeedItem(5,conObj.Id);
        Test.startTest();
        insert feedItemList;
        Test.stopTest();   
        
        List<FeedItem> feedItemAssertList = [Select Id,Status From FeedItem ];
        for(FeedItem feedItemObj: feedItemAssertList){
            system.assertEquals('Published',feedItemObj.Status);
        }
    } 
}