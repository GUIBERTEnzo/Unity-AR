"""Partie 3""";

D1 = pi/3;
D2 = pi/4;
D6 = pi/4;
D11 = pi;

Kv1 = 1.6;
Kv2 = 1.8;
Kv6 = 1.8;
Kv11 = 3;
Ka1 = 1;
Ka2 = 1.2;
Ka6 = 1.2;
Ka11 = 2;

c1 = Kv1^2/Ka1;
c2 = Kv2^2/Ka2;
c6 = Kv6^2/Ka6;
c11 = Kv11^2/Ka11;

tf1 = 2*sqrt(abs(D1)/Ka1);
tf2 = 2*sqrt(abs(D2)/Ka2);
tf6 = 2*sqrt(abs(D6)/Ka6);
tf11 = 2*sqrt(abs(D11)/Ka11);

lambda1 = min([Kv1*abs(D1)/(Kv1*abs(D1)) [Kv2*abs(D1)/(Kv1*abs(D2)) [Kv6*abs(D1)/(Kv1*abs(D6)) [Kv11*abs(D1)/(Kv1*abs(D11))]);
lambda2 = min([Kv1*abs(D2)/(Kv2*abs(D1)) [Kv2*abs(D2)/(Kv2*abs(D2)) [Kv6*abs(D2)/(Kv2*abs(D6)) [Kv11*abs(D2)/(Kv2*abs(D11))]);
lambda6 = min([Kv1*abs(D6)/(Kv6*abs(D1)) [Kv2*abs(D6)/(Kv6*abs(D2)) [Kv6*abs(D6)/(Kv6*abs(D6)) [Kv11*abs(D6)/(Kv6*abs(D11))]);
lambda11 = min([Kv1*abs(D11)/(Kv11*abs(D1)) [Kv2*abs(D11)/(Kv11*abs(D2)) [Kv6*abs(D11)/(Kv11*abs(D6)) [Kv11*abs(D11)/(Kv11*abs(D11))]);
"""A modifier""";
mu1 = min([Kv1*abs(D1)/(Kv1*abs(D1)) [Kv2*abs(D1)/(Kv1*abs(D2)) [Kv6*abs(D1)/(Kv1*abs(D6)) [Kv11*abs(D1)/(Kv1*abs(D11))]);
mu2 = min([Kv1*abs(D2)/(Kv2*abs(D1)) [Kv2*abs(D2)/(Kv2*abs(D2)) [Kv6*abs(D2)/(Kv2*abs(D6)) [Kv11*abs(D2)/(Kv2*abs(D11))]);
mu6 = min([Kv1*abs(D6)/(Kv6*abs(D1)) [Kv2*abs(D6)/(Kv6*abs(D2)) [Kv6*abs(D6)/(Kv6*abs(D6)) [Kv11*abs(D6)/(Kv6*abs(D11))]);
mu11 = min([Kv1*abs(D11)/(Kv11*abs(D1)) [Kv2*abs(D11)/(Kv11*abs(D2)) [Kv6*abs(D11)/(Kv11*abs(D6)) [Kv11*abs(D11)/(Kv11*abs(D11))]);

"""Partie 4""";

teta1 = pi/4;
teta2 = pi/3;
teta6 = -pi/6;
teta11 = pi/3;
dteta1 = pi/180*0.002;
dteta2 = pi/180*0.002;
dteta6 = pi/180*0.001;
dteta11 = pi/180*0.001;

L1 = 390;
L2 = 180;
L5 = 1190;
L6 = 800;
L7 = 100;
L9 = 125;
dL1 = 0.02;
dL2 = 0.02;
dL5 = 0.01;
dL6 = 0.01;
dL7 = 0.01;
dL9 = 0.01;

jq11 = sin(teta1)*(L5*cos(teta2)+L6*cos(teta2+teta6)+L7);
jq12 = cos(teta1)*(L5*sin(teta2)+L6*sin(teta2+teta6));
jq13 = cos(teta1)+L6*sin(teta2+teta6);
jq21 = cos(teta1)*(L5*cos(teta2)+L6*cos(teta2+teta6)+L7);
jq22 = sin(teta1)*(L5*sin(teta2)+L6*sin(teta2+teta6));
jq23 = sin(teta1)+L6*sin(teta2+teta6);
jq32 = L5*cos(teta2)+L6*cos(teta2+teta6);
jq33 = L6*cos(teta2+teta6);

jl13 = cos(teta1)*cos(teta2);
jl14 = cos(teta1)*cos(teta2+teta6);
jl15 = cos(teta1);
jl23 = sin(teta1)*cos(teta2);
jl24 = sin(teta1)*cos(teta2+teta6);
jl33 = sin(teta2);
jl34 = sin(teta2+teta6);

Jq = [jq11 jq12 jq13 0;jq21 jq22 jq23 0;0 jq32 jq33 0;1 0 0 -1];
Jl = [0 1 jl13 jl14 jl15 0;0 0 jl23 jl24 0 0;1 0 jl33 jl34 0 -1;0 0 0 0 0 0];
dq = [dteta1;dteta2;dteta6;dteta11];
dL = [dL1;dL2;dL5;dL6;dL7;dL9];

dXq = Jq*dq;
dXL = Jl*dL;
dXP = dXq + dXL;