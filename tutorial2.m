%% question 1.1
M_p = 10;
zeta = abs(log(M_p/100)/(sqrt(pi^2+log(M_p/100)^2)))
beta = acos(zeta);


%% question 1.2
t_p =0.5;
w_n = pi/(t_p*sqrt(1-zeta^2))
w_d = pi/t_p

%% question 1.3
G = tf(w_n^2,[1,2*zeta*w_n,w_n^2]);
pzmap(G);
sgrid(zeta,w_n)
axis equal;
%% question 1.4
[k,T1,T2] = deal(0.7904,0.0648,0.106);
G = tf(k,[T1*T2,T1+T2,1,0]);
p =pole(G)
pzmap(G);
G

%% problem 1.6
impulse(G)
%% problem 2.1
rlocus(G)
zeta = 0:0.1:1;
w_n = 7.78:10:50;
sgrid(zeta,w_n);
axis equal; 

%% problem 2.2
[kp,poles_kp] = rlocfind(G)

%% problem 2.3
T = feedback(kp*G,1)
damp(T);
step(T);


%% roc
rlocus(G)
sgrid
[prop,poles]=rlocfind(G)

