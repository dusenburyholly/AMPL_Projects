###### Project: Maximize profit for Southern Oil Co. via production of Regular and Premuim gasolines.

###### Ch 2 # 41  - Southern Oil Co.

var R; 			# Regular gasoline
var P; 			# Premium gasoline

maximize Profit: 0.30 * R + 0.50 * P; 

subject to CrudeSupply: 0.30 * R + 0.60 * P <= 18000;
subject to ProdLimit: R + P <= 50000;
subject to Premdemand: 0 <= P <= 20000; 
subject to Regdemand: R >= 0;




##### Ch 3 # 25 - Georgia Cabinets

var C1Oak >=0 ; 		# % of oak cabinets contracted cabinetmaker #1 
var C2Oak >=0;			# % of oak cabinets contracted cabinetmaker #2  
var C3Oak >=0;			# % of oak cabinets contracted cabinetmaker #3 
var C1Cherry >=0; 		# % of cherry cabinets contracted cabinetmaker #1 
var C2Cherry >=0; 		# % of cherry cabinets contracted cabinetmaker #2
var C3Cherry >=0; 		# % of cherry cabinets contracted cabinetmaker #3

minimize Cost: (50*36)*C1Oak + (60*36)*C1Cherry + (42*32)*C2Oak + (48*42)*C2Cherry + (30*55)*C3Oak + (35*55)C3Cherry;

subject to OakSum: C1Oak + C2Oak + C3Oak = 1; 	# percentages sum to 1 
subject to CherrySum: C1Cherry + C2Cherry + C3Cherry = 1; 	# percentages sum to 1
subject to C1Limit: 50*C1Oak + 60*C1Cherry <= 40; 	# Cabinetmaker #1 labor limit
subject to C2Limit: 42*C2Oak + 48*C2Cherry <= 30;   # Cabinetmaker #2 labor limit
subject to C3Limit: 30*C3Oak + 35*C3Cherry <= 35;   # Cabinetmaker #3 labor limit

