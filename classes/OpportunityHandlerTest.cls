/* Class: OpportunityHandler
 * Author: Pablo Dunke
 * Date: 21/11/2019
 */

@isTest
public class OpportunityHandlerTest 
{
	@isTest
	static void synchronizeStageTest() 
   	{
		Opportunity opportunity = new Opportunity();
        	opportunity.Name = 'My Opportunity';
        	opportunity.StageName = 'New';
        	opportunity.CloseDate = System.today();
       	 	insert opportunity;
        
        	synchronizeStageSubtest(opportunity, 'Quote', 'Lead');
        	synchronizeStageSubtest(opportunity, 'Credit Check', 'Qualify');
        	synchronizeStageSubtest(opportunity, 'Document Received', 'Propose');
        	synchronizeStageSubtest(opportunity, 'PO Released', 'Commit');
        	synchronizeStageSubtest(opportunity, 'Booked', 'Win');
	}
    
    	static void synchronizeStageSubtest(Opportunity pOpportunity, String pStatus, String pStage)
    	{
        	pOpportunity.Status__c = pStatus;
        	update pOpportunity;
        
        	Opportunity tOpportunity = OpportunityDAO.getOpportunityById(pOpportunity.Id);
        	System.assertEquals(pStage, tOpportunity.Stage__c);
    	}
    
    	@isTest
	static void synchronizeProbabilityTest() 
    	{
		Opportunity opportunity = new Opportunity();
        	opportunity.Name = 'My Opportunity';
       	 	opportunity.StageName = 'New';
        	opportunity.CloseDate = System.today();
        	insert opportunity;
        
        	synchronizeProbabilitySubtest(opportunity, 'Quote', 0);
        	synchronizeProbabilitySubtest(opportunity, 'Credit Check', 30);
        	synchronizeProbabilitySubtest(opportunity, 'Document Received', 60);
        	synchronizeProbabilitySubtest(opportunity, 'PO Released', 90);
        	synchronizeProbabilitySubtest(opportunity, 'Booked', 100);
	}
    
    	static void synchronizeProbabilitySubtest(Opportunity pOpportunity, String pStatus, Decimal pProbability)
    	{
        	pOpportunity.Status__c = pStatus;
        	update pOpportunity;
        
        	Opportunity tOpportunity = OpportunityDAO.getOpportunityById(pOpportunity.Id);
        	System.assertEquals(pProbability, tOpportunity.Probability);
    	}
}
