/**********************************************************************************************************
* Class Name: FeedItemTestDataFactory
* Author: KGS
*
* ============================================================================================================
* ============================================================================================================
* Purpose: This class generates/insert an custom setting and FeedItem records.
* ============================================================================================================
* ============================================================================================================
* History:
* VERSION     DATE                  INITIALS      DESCRIPTION/FEATURES ADDED
* 1.0         1-December-2021       KGS           Initial Development
***********************************************************************************************************/
public class FeedItemTestDataFactory {
    public static Contact createContact(){
        
        Contact conObj = New Contact();
        conObj.LastName = 'Test';
        
        return conObj;
        
    }
    public static List<FeedItem> createFeedItem(Integer noOfFeedItem, String parentId) {
        List<FeedItem> feedItemListRecords = New List<FeedItem> ();
        if(noOfFeedItem > 0){
            for(Integer i=0; i<noOfFeedItem; i++ ){
                FeedItem FeedItemObj = New FeedItem();
                FeedItemObj.Body = 'Test'+i;
                if(String.isNotBlank(ParentId) && ParentId != null){
                    FeedItemObj.ParentId = parentId;
                }
                
                feedItemListRecords.add(FeedItemObj);
            }
        }
        return feedItemListRecords;       
    } 
    
}