
###### Variables
# pi := the number of units of each product i produced
var p1 integer;
var p2 integer;
var p3 integer;

###### Objective Fxn
# total profit is sum of each unit's profit minus the setup costs for each product.
maximize totalprofit: 25*p1 + 28*p2 + 30*p3 - (400 + 550 + 600);

###### Constraints - labor capacities of each Dept.
subject to laborA: 1.5*p1 + 3.0*p2 + 2.0*p3 <= 450;
subject to laborB: 2*p1 + 1*p2 + 2.5*p3 <= 350;
subject to laborC: 0.25*p1 + 0.25*p2 + 0.25*p3 <= 50;
subject to supply1: 0 <= p1 <= 175;
subject to supply2: 0 <= p2 <= 150;
subject to supply3: 0 <= p3 <= 140;

