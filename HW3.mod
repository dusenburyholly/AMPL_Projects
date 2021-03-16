/*var origLA >=0;			# Supply from Los Angeles power plant, in MW
var origTulsa >=0;		# Supply from Tulsa power plant, in MW
var origSeattle >=0;	# Supply from Seattle power plant, in MW
var destSeattle >=0;	# power supplied to Seattle, in MW
var destPortland >=0;	# power supplied to Portland, in MW
var destSF >=0;			# power supplied to San Francisco, in MW
var destBoise >=0;		# power supplied to Boise, in MW
var destReno >=0;		# power supplied to Reno, in MW
var destBozeman >=0;	# power supplied to Bozeman, in MW
var destLaramie >=0;	# power supplied to Laramie, in MW
var destParkCity >=0;	# power supplied to Park City, in MW
var destFlagstaff >=0;	# power supplied to Flagstaff, in MW
var destDurango >=0; 	# power supplied to Durango, in MW
*/

# xij := power supplied from plant i to city j
# i = 1, 2, 3
# j = 1, 2, ... , 10

var x11 >=0;
var x12 >=0;
var x13 >=0;
var x14 >=0;
var x15 >=0;
var x16 >=0;
var x17 >=0;
var x18 >=0;
var x19 >=0;
var x110 >=0;
var x21 >=0;
var x22 >=0;
var x23 >=0;
var x24 >=0;
var x25 >=0;
var x26 >=0;
var x27 >=0;
var x28 >=0;
var x29 >=0;
var x210 >=0;
var x31 >=0;
var x32 >=0;
var x33 >=0;
var x34 >=0;
var x35 >=0;
var x36 >=0;
var x37 >=0;
var x38 >=0;
var x39 >=0;
var x310 >=0;

minimize DistributionCost: 356.25*x11 + 593.75*x21 + 59.38*x31 + 356.25*x12 + 593.75*x22 + 178.13*x32 
	+ 178.13*x13 + 475.00*x23 + 296.88*x33 + 356.25*x14 + 475.00*x24 
	+ 296.88*x34 + 237.50*x15 + 475.00*x25 + 356.25*x35 + 415.63*x16 
	+ 415.63*x26 + 296.88*x36 + 356.25*x17 + 415.63*x27 + 356.25*x37 
	+ 356.25*x18 + 356.25*x28 + 475.00*x38 + 178.13*x19 + 475.00*x29 
	+ 593.75*x39 + 356.25*x110 + 296.88*x210 + 593.75*x310;

subject to DemandSeattle: x11 + x21 + x31 = 950.00;
subject to DemandPortland: x12 + x22 + x12 = 831.25;
subject to DemandSF: x13 + x23 + x33 = 2375.00;
subject to DemandBoise: x14 + x24 + x34 = 593.75;
subject to DemandReno:  x15 + x25 + x35 = 950.00;
subject to DemandBozeman: x16 + x26 + x36 = 593.75;
subject to DemandLaramie: x17 + x27 + x37 = 1187.50;
subject to DemandParkCity: x18 + x28 + x38 = 712.50;
subject to DemandFlagstaff: x19 + x29 + x39 = 1187.50;
subject to DemandDurango: x110 + x210 +x310 = 1543.75;


# only restricted for part (b)
subject to SupplyLA: x11 + x12 + x13 + x14 + x15 + x16 + x17 + x18 + x19 + x110 <= 4000;
subject to SupplyTulsa: x21 + x22 + x23 + x24 + x25 + x26 + x27 + x28 + x29 + x210 <= 4000;
subject to SupplySeattle: x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38 + x39 + x310 <= 4000;

