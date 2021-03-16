########## VISUAL REPRESENTATION


### 	batch (50 lbs per batch)
###   	  |
# 	constituents (7 total)
#      |  |  |
#   ingredients  (14 total)

####################################
# options solver cplex;
# model CaseStudyJackCheapModel.mod;
# solve;

# display _varname, _var;
# display _conname, _con.current;


############# Jack's model: Cost Minimization w/ Original Composition   ##############

### Variables - consistent in each model
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
subject to batchWeight: ing1 + ing2 + ing3 + ing4 + ing5 + ing6 +ing7 + ing8 +ing9 + ing10 +ing11 +ing12 + ing13 + ing14 = 50;
subject to IngofC1: 0.4*ing1 + 0.2*ing2 + 0.8*ing3 + 0.8*ing4 + 0.9*ing5 + 0.1*ing6 + 0.5*ing10 + 0.6*ing11 = 0.16*50;
subject to IngofC2: 0.1*ing1 + 0.1*ing4 + 0.1*ing6 + 0.3*ing7 + 1*ing8 = 0.08*50;
subject to IngofC3: 0.7*ing9 + 0.1*ing10 = 0.16*50;
subject to IngofC4: 0.4*ing10 + 0.4*ing11 = 0.0035*50;
subject to IngofC5: 1*ing12 = 0.0025*50;
subject to IngofC6: 1*ing13 = 0.0015*50;
subject to IngofC7: 0.5*ing1 + 0.8*ing2 + 0.2*ing3 + 0.1*ing4 + 0.1*ing5 + 0.8*ing6 + 0.7*ing7 + 0.3*ing9 + 1*ing14 = 0.5925*50; 

