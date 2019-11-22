/* Author: Pablo Dunke
 * Date: 21/11/2019
 * Description: Trigger for the object Opportunity
 */

trigger OpportunityTrigger on Opportunity (before insert, before update) 
{
    if(Trigger.isBefore == true)
    {
        if(Trigger.isInsert == true || Trigger.isUpdate == true)
        {
            OpportunityHandler.synchronizeStage((List<Opportunity>) Trigger.new);
            OpportunityHandler.synchronizeProbability((List<Opportunity>) Trigger.new);
        }
    }
}
