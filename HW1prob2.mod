##### Ch 3 # 25 - Georgia Cabinets

var C1Oak >=0; 		## % of oak cabinets contracted cabinetmaker #1 
var C2Oak >=0;		## % of oak cabinets contracted cabinetmaker #2  
var C3Oak >=0;		## % of oak cabinets contracted cabinetmaker #3 
var C1Cherry >=0; 	## % of cherry cabinets contracted cabinetmaker #1 
var C2Cherry >=0; 	## % of cherry cabinets contracted cabinetmaker #2
var C3Cherry >=0; 	## % of cherry cabinets contracted cabinetmaker #3

minimize Cost: 1800*C1Oak + 2160*C1Cherry + 1596*C2Oak + 1824*C2Cherry + 1650*C3Oak + 1925*C3Cherry;

subject to OakSum: C1Oak + C2Oak + C3Oak = 1; 	# percentages sum to 1 
subject to CherrySum: C1Cherry + C2Cherry + C3Cherry = 1; 	# percentages sum to 1
subject to C1Limit: 50*C1Oak + 60*C1Cherry <= 40; 	# Cabinetmaker #1 labor limit
subject to C2Limit: 42*C2Oak + 48*C2Cherry <= 30;   # Cabinetmaker #2 labor limit
subject to C3Limit: 30*C3Oak + 35*C3Cherry <= 35;   # Cabinetmaker #3 labor limit


