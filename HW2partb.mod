### HW 2 - Ch 4, #19
## Silver Star Bicycle Co.

####################################################


## part b 


##### Variables
var m1 >= 0;		# no. mens, month 1 (amt produced)
var m2 >= 0; 		# no. mens, month 2 (amt produced)
var w1 >= 0; 		# no. womens, month 1 (amt produced)
var w2 >= 0; 		# no. womens, month 2 (amt produced)
var endinvm1 >= 0;	# end of mo. 1 inventory - mens
var endinvm2 >= 25; 	# end of mo. 2 inventory - mens
var endinvw1 >= 0; 	# end of mo. 1 inventory - womens
var endinvw2 >= 25; 	# end of mo. 2 inventory - womens


##### Objective function
minimize Cost: 120*m1 + 120*m2 + 2.4*endinvm1 + 2.4*endinvm2 + 90*w1 + 90*w2 + 1.8*endinvw1 + 1.8*endinvw2;

##### Constraints
subject to Manum1: m1 - endinvm1 = 150 - 20;
subject to Manum2: endinvm1 + m2 - endinvm2 = 200;
subject to Manuw1: w1 - endinvw1 = 125 - 30;
subject to Manuw2: endinvw1 + w2 - endinvw2 = 150;
subject to Labor1: 950 <= 3.5*m1 + 2.6*w1 <= 1050;
subject to Labor2: 3.5*m1 + 2.6*w1 - 3.5*m2 - 2.6*w2 <= 50;
subject to Labor3: 3.5*m2 + 2.6*w2 - 3.5*m1 - 2.6*w1 <= 1050;









