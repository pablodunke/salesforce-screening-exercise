## Solution

### Classes, Triggers and Unit Tests that were created to solve the problem

* classes/OpportunityDAO.cls
* classes/OpportunityDAOTest.cls
* classes/OpportunityHandler.cls
* classes/OpportunityHandlerTest.cls
* triggers/OpportunityTrigger.trigger

### Explanation of why / how the problem was solved that way

```
I created a class to handle the code of the trigger
That make everything easier to manage

I created two methods to manage the field updates, one to each field
So is easier to update the code at the case of any kind of change the requirements

At here, the trigger is tested by the test class of the handler

```

### Alternative solution for the problem (maybe using point and click)

* It can be done using 10 Workflow Rules, 5 to each field (Stage and Probability)  
* It also can be done using a Process Builder
