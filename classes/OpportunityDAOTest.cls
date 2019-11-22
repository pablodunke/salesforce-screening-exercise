/* Class: OpportunityDAO
 * Author: Pablo Dunke
 * Date: 21/11/2019
 */

@isTest
public class OpportunityDAOTest 
{
    	@isTest
	static void getOpportunityByIdTest() 
    	{
		Opportunity opportunity = new Opportunity();
        	opportunity.Name = 'My Opportunity';
        	opportunity.StageName = 'New';
        	opportunity.CloseDate = System.today();
        	insert opportunity;
        
        	Opportunity tOpportunity = OpportunityDAO.getOpportunityById(opportunity.Id);
        	System.assertEquals(opportunity.Id, tOpportunity.Id);
	}
}
