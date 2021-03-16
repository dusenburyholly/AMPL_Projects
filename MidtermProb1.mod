

##### Variables - 3 Vaccines
var V1 >= 0; 	# no. boxes produced of vaccine 1
var V2 >= 0; 	# no. boxes produced of vaccine 2
var V3 >= 0; 	# no.  boxes produced of vaccine 3

##### Objective Fxn - Net Profit (total profit - total penalty)
maximize NetProfit: (80*V1 + 77*V2 + 95*V3) - ((700 - V1)*18 + (850 - V2)*22 + (800 - V3)*19);

##### Constraints - Labor Capacities of Each Dept/Stage
subject to GenerateAntigens: 7*V1 + 8*V2 + 6.5*V3 <= 17000;
subject to ReleaseIsolate: 3.2*V1 + 2.7*V2 + 4.1*V3 <= 8000;
subject to Purity: 1.4*V1 + 1.5*V2 + 1.7*V3 <= 4000;
subject to Strengthen: 1.5*V1 + 2*V2 + 2*V3 <= 4700;
subject to Distribute: 6*V1 + 5.5*V2 + 6.5*V3 <= 14000;
subject to V1Demand:  V1 = 700;
subject to V2Demand: V2 = 850;
subject to V3Demand:  V3 = 800;


