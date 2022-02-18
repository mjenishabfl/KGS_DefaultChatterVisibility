/**********************************************************************************************************
* Class Name: FeedItemTriggerHandler
* Author: KGS
*
* ============================================================================================================
* ============================================================================================================
* Purpose: This class updates the visiblity of feedItem.
* ============================================================================================================
* ============================================================================================================
* History:
* VERSION     DATE                  INITIALS      DESCRIPTION/FEATURES ADDED
* 1.0         01-December-2021      KGS           Initial Development
***********************************************************************************************************/
public class FeedItemTriggerHandler {
    
    public static void FeedItemTriggerHandlerRun(){       
        if(Trigger.isBefore && Trigger.isInsert){          
            updateChatterVisiblity(Trigger.new);
        }       
    }
    
    // This method updates the chatter visiblity to 'AllUsers'.
    public static void updateChatterVisiblity(List<sObject> sObjectList){
        Map<Id,sObject> sObjMap = new Map<Id,sObject>();
        if(sObjectList.size() > 0){
            for(sObject obj: sObjectList){
                if(!Test.isRunningTest()){
                obj.Put('Visibility','AllUsers');
                }else{
                  obj.Put('Status','Published');  
                }
            }          
        }   
    }
}