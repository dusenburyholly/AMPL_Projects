########## VISUAL REPRESENTATION


### 	batch (50 lbs per batch)
###   	  |
# 	constituents (7 total)
#      |  |  |
#   ingredients  (14 total)

####################################



############# Jack's model: Cheapest   ##############

### Variables - consistent in each model

# Constituents (weight in lbs)    
 
 
#param C1 = 0.16*50;	# constituent #1; Fat
#param C2 = 0.08*50;	# constituent #2; Serum solids
#param C3 = 0.16*50;	# constituent #3; Sugar solids
#param C4 = 0.0035*50;	# constituent #4; Egg solids
#param C5 = 0.0025*50;	# constituent #5; Stabilizer
#param C6 = 0.0015*50;	# constituent #6; Emulsifier
#param C7 = 0.5925*50;	# constituent #7; Water  



# Ingredients (weight in lbs)
var ing1 >= 0;  # ingredient #1; 40% cream
var ing2 >= 0;  # ingredient #2; 23% cream
var ing3 >= 0;  # ingredient #3; Butter
var ing4 >= 0;  # ingredient #4; Plastic cream
var ing5 >= 0;  # ingredient #5; Butter oil
var ing6 >= 0;  # ingredient #6; 4% milk
var ing7 >= 0;  # ingredient #7; Skim condensed milk
var ing8 >= 0;  # ingredient #8; Skim milk powder
var ing9 >= 0;  # ingredient #9; Liquid sugar
var ing10 >= 0;  # ingredient #10; Sugared frozen fresh egg yolk
var ing11 >= 0;  # ingredient #11; Powdered egg yolk
var ing12 >= 0;  # ingredient #12; Stabilizer
var ing13 >= 0;  # ingredient #13; Emulsifier
var ing14 >= 0;  # ingredient #14; Water


### Objective Function - Cost ($) of a 50-lb batch of ice cream
minimize Cost: 1.19*ing1 + 0.70*ing2 + 2.32*ing3 + 2.30*ing4 + 2.87*ing5 + 0.25*ing6 + 0.35*ing7 + +0.65*ing8 + 0.25*ing9 + 1.75*ing10 + 4.45*ing11 + 2.45*ing12 + 1.68*ing13 + 0.00*ing14;


### Constraints

# ratio of constituents to dough; multiply Ci by % of batch weight (totaling 50 lbs)
#subject to RatioConstiutents: 0.16*C1 + 0.08*C2 + 0.16*C3 + 0.0035*C4 + 0.0025*C5 + 0.0015*C6 + 0.5925*C7 = 50;

# ratio of ingredients to constituent; "number of lbs of a constituent per one lb of an ingredient"

/*subject to compIng1: 0.4*C1 + 0.1*C2 + 0.5*C3 = ing1;
subject to compIng2: 0.2*C1 + 0.8*C7 = ing2;
subject to compIng3: 0.8*C1 + 0.2*C7 = ing3;
subject to compIng4: 0.8*C4 + 0.1*C2 + 0.1*C7 = ing4;
subject to compIng5: 0.9*C1 + 0.1*C7 = ing5;
subject to compIng6: 0.1*C1 + 0.1*C2 + 0.8*C7 = ing6;
subject to compIng7: 0.3*C3 + 0.7*C7 = ing7;
subject to compIng8: 1*C2 = ing8;
subject to compIng9: 0.7*C3 + 0.3*C7 = ing9;
subject to compIng10: 0.5*C1 + 0.1*C3 + 0.4*C4 = ing10;
subject to compIng11: 0.6*C1 + 0.4*C4 = ing11;
subject to compIng12: 1*C5 = ing12;
subject to compIng13: 1*C6 = ing13;
subject to compIng14: 1*C7 = ing14;  */

subject to batchWeight: ing1 + ing2 + ing3 + ing4 + ing5 + ing6 +ing7 + ing8 +ing9 +ing10 +ing11 +ing12 + ing13 + ing14 = 50;
subject to IngofC1: 0.4*ing1 + 0.2*ing2 + 0.8*ing3 + 0.8*ing4 + 0.9*ing5 + 0.1*ing6 + 0.5*ing10 + 0.6*ing11 = 0.16*50;
subject to IngofC2: 0.1*ing1 + 0.1*ing4 + 0.1*ing6 + 0.3*ing7 + 1*ing8 = 0.08*50;
subject to IngofC3: 0.7*ing9 + 0.1*ing10 = 0.16*50;
subject to IngofC4: 0.4*ing10 + 0.4*ing11 = 0.0035*50;
subject to IngofC5: 1*ing12 = 0.0025*50;
subject to IngofC6: 1*ing13 = 0.0015*50;
subject to IngofC7: 0.5*ing1 + 0.8*ing2 + 0.2*ing3 + 0.1*ing4 + 0.1*ing5 + 0.8*ing6 + 0.7*ing7 + 0.3*ing9 + 1*ing14 = 0.5925*50; 
