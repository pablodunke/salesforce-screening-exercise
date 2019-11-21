/* Author: Pablo Dunke
 * Date: 21/11/2019
 * Description: Trigger for the object Opportunity
 */

trigger OpportunityTrigger on Opportunity (before insert, before update) 
{
    // For when the trigger is expanded to after methods
    if(Trigger.isBefore == true)
    {
        if(Trigger.isInsert == true || Trigger.isUpdate == true)
        {
            // For when the requirements are changed for just one field
            OpportunityHandler.synchronizeStage((List<Opportunity>) Trigger.new);
            OpportunityHandler.synchronizeProbability((List<Opportunity>) Trigger.new);
        }
    }
}
