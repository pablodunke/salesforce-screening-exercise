/* Test: OpportunityDAOTest
 * Author: Pablo Dunke
 * Date: 21/11/2019
 * Description: DAO (Data Access Object) for the object Opportunity
 */

public class OpportunityDAO 
{
	public static Opportunity getOpportunityById(Id pOpportunityId)
    	{
        	return [SELECT Id, Probability, Stage__c FROM Opportunity WHERE Id =: pOpportunityId];
    	}
}
