# p 268

param m;
param n;

set ori := 1..m;
set des := 1..n;

param c{i in ori, j in des};
# param s{i in ori};
param d{j in des};

var x{i in ori, j in des} >=0;

minimize cost: sum{i in ori, j in des} (c[i,j]*x[i,j]);

# s.t. supply {i in ori}: sum{j in des} x[i,j] <= s[i];

s.t. demand {j in des}: sum{i in ori} x[i,j] = d[j];