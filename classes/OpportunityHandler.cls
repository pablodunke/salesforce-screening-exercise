/* Test: OpportunityHandlerTest
 * Author: Pablo Dunke
 * Date: 21/11/2019
 * Description: Handler to the trigger for the object Opportunity
 */

public class OpportunityHandler 
{
	public static void synchronizeStage(List<Opportunity> pListOpportunity)
    {
        for(Opportunity forOpportunity: pListOpportunity)
        {
            if(forOpportunity.Status__c == 'Quote')				forOpportunity.Stage__c = 'Lead';
            else if(forOpportunity.Status__c == 'Credit Check')			forOpportunity.Stage__c = 'Qualify';
            else if(forOpportunity.Status__c == 'Document Received')		forOpportunity.Stage__c = 'Propose';
            else if(forOpportunity.Status__c == 'PO Released')			forOpportunity.Stage__c = 'Commit';
            else if(forOpportunity.Status__c == 'Booked')			forOpportunity.Stage__c = 'Win';
        }
    }
    
    public static void synchronizeProbability(List<Opportunity> pListOpportunity)
    {
        for(Opportunity forOpportunity: pListOpportunity)
        {
            if(forOpportunity.Status__c == 'Quote')				forOpportunity.Probability = 0;
            else if(forOpportunity.Status__c == 'Credit Check')			forOpportunity.Probability = 30;
            else if(forOpportunity.Status__c == 'Document Received')		forOpportunity.Probability = 60;
            else if(forOpportunity.Status__c == 'PO Released')			forOpportunity.Probability = 90;
            else if(forOpportunity.Status__c == 'Booked')			forOpportunity.Probability = 100;
        }
    }
}
