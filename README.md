# BDFS Salesforce Screening Exercise

## Users Story

The company Acme Corp wants their system to synchronize the Opportunity fields Stage and Probability when
Status field changes (from UI or API). The status are progressive starting on Quote and move then to Credit Check
and so on until the end of the table below.

| STATUS             | STAGE   | PROBABILITY |
| ------------------ | ------- | ----------- |
| Quote              | Lead    | 0           |
| Credit Check       | Qualify | 30          |
| Document Received  | Propose | 60          |
| PO Released        | Commit  | 90          |
| Booked             | Win     | 100         |

## Deliverables

* Classes, Triggers and Unit Tests that were created to solve the problem;
* Explanation of why/how the problem was solved that way;
* Alternative solution for the problem (maybe using point and click)

# Observations

A message
separated at the method division of concerns
