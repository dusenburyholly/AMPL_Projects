set origin := 1..4;
set region := 1..4;
set bin := 1..4;

param y{i in origin, j in region};
param s{i in origin};
param d{j in region};

var x{i in origin, j in region} >= 0;
var xbin{h in bin} binary; # binary: open or not open

minimize cost: sum{i in origin, j in region} (y[i, j] * x[i,j]) + 7500 + 7000 + 8000 + 5500;

subject to supply {i in origin}: sum{j in region} x[i,j] <= s[i];
subject to demand {j in region}: sum{i in origin} x[i,j] = d[j];
subject to Partd: xbin[3] = xbin[4]; # if Boston is open then so is Dallas
subject to Parte: sum{h in bin} xbin[h] <= 3; # sum of these values must be less than 3
subject to Partf: xbin[1] + xbin[2] = 1; # either SD or Denver is open








/*subject to total: sum{i in origin, j in region} x[i,j] <= 10000;
subject to region1: sum{i in origin} y[i, 1] * x[i, 1] >= 5000;
subject to region2: sum{i in origin} y[i, 2] * x[i, 2] >= 4000; 
subject to region3: sum{i in origin} y[i, 3] * x[i, 3] >= 5000;
subject to region4: sum{i in origin} y[i, 4] * x[i, 4] >= 4000;
*/

