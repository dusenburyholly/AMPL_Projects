# OPS 807 Final Exam Modeling Problem

# Problem: ILM College - textbook publication

##########################################

#### Variables 
# Each is a 0-1 decision variable 
# (0 if rejected, 1 if published)

var Analytics1 integer; 	
var Analytics2 integer;
var Analytics3 integer; 
var Finance1 integer;
var Finance2 integer;
var Marketing1 integer;
var Marketing2 integer; 
var Accounting1 integer;
var Accounting2 integer;
var Accounting3 integer;


#### Objective function
maximize Sales: 4*Analytics1 + 3*Analytics2 + 7*Analytics3 + 6*Finance1 + 7*Finance2 + 5*Marketing1 + 4* Marketing2 + 8*Accounting1 + 6*Accounting2 + 4*Accounting3; # in thousands of dollars


#### Constraints
subject to AnnaLabor: 20*Analytics1 + 10*Analytics2 + 16*Analytics3 + 10*Finance1 + 0*Finance2 + 25*Marketing1 + 7* Marketing2 + 24*Accounting1 + 18*Accounting2 + 0*Accounting3 <= 70;
subject to NormanLabor: 30*Analytics1 + 12*Analytics2 + 0*Analytics3 + 12*Finance1 + 14*Finance2 + 12*Marketing1 + 0* Marketing2 + 13*Accounting1 + 17*Accounting2 + 21*Accounting3 <= 80;
subject to NorahLabor: 0*Analytics1 + 13*Analytics2 + 21*Analytics3 + 8*Finance1 + 22*Finance2 + 0*Marketing1 + 15* Marketing2 + 0*Accounting1 + 0*Accounting2 + 19*Accounting3 <= 40;
subject to AnalyticsReq: Analytics1 + Analytics2 + Analytics3 <= 2;
subject to FinanceReq: Finance1 + Finance2 <= 2;
subject to AccountingReq: Accounting1 + Accounting2 + Accounting3 <= 2;
subject to MarketingReq: Marketing1 + Marketing2 = 1;

subject to an1: 0<= Analytics1 <=1;
subject to an2: 0<= Analytics2 <=1;
subject to an3: 0<= Analytics3 <=1;
subject to f1: 0<= Finance1 <=1;
subject to f2: 0<= Finance2 <=1;
subject to m1: 0<= Marketing1 <=1;
subject to m2: 0<= Marketing2 <=1;
subject to ac1: 0<= Accounting1 <=1;
subject to ac2: 0<= Accounting2 <=1;
subject to ac3: 0<= Accounting3 <=1;





