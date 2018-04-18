$TITLE Nesting_Circles
*Sets
set  l polygons / l1*l4 /;
alias(l,j)
set i   vertices /i1*i4/ ;
set ic  circles /ic1*ic20/ ;
alias(ic,k)

*Variables
Variable s(l) sine rotation angle;
Variable c(l) cosine rotation angle;
Variable v(l) vertical translation;
Variable h(l) horizontal translation;
Free Variable Le  length of the nest;


*Scalars
Scalar L0 length of a known feasible nest /0.51/;
Scalar W Width of a known feasible nest /1/;
*Data

Table a(ic,l) point a of center of circle ic in polygon l
         l1              l2              l3               l4
ic1      0.000150791     3.99E-08        1.59E-05        -2.90E-05
ic2      0.223173        0.118638        0.0422278       -0.0869431
ic3     -0.129691       -0.0885498       0.0690589       -0.146269
ic4      0.114188        0.1771         -0.127902         0.132946
ic5     -0.142712       -0.126826        0.0861243       -0.186797
ic6      0.298816        0.0697241       0.0233993       -0.214425
ic7     -0.0866412      -0.0533461       0.0957434       -0.0476409
ic8     -0.100824       -0.0304687       0.0968177        0.187715
ic9      0.207223        0.205918       -0.0822595        0.0809443
ic10    -0.161796        0.153015        0.0570364       -0.233265
ic11     0.0854194      -0.143394        0.103727        -0.119614
ic12     0.27299        -0.0217704      -0.167111        -0.0663132
ic13     0.176423       -0.111789        0.0679145       -0.246163
ic14     0.178129        0.220137        0.0783841       -0.16833
ic15    -0.0508153       0.0378996       0.108048         0.210298
ic16    -0.061098       -0.030072        0.012873        -0.254953
ic17     0.31969         0.194081        0.0922766       -0.201856
ic18    -0.167289        0.0962126       0.0334143        0.166326
ic19    -0.151038       -0.150598       -0.0473741       -0.0501999
ic20    -0.111715       -0.0725812       0.110783        -0.0248462
;
Table b(ic,l) point b of center of circle ic in polygon l
        l1                l2             l3               l4
ic1     3.64E-05          3.47E-05       7.85E-05         8.38E-05
ic2     0.100199         -0.00850044     0.184292         0.15122
ic3    -0.171285         -0.0719152      0.301198         0.254447
ic4     0.024815         -0.0127306     -0.0801713       -0.0609464
ic5     0.142712         -0.103061       0.37552          0.324965
ic6     0.15251          -0.00495578     0.102671         0.372968

ic7    -0.114254         -0.0436349     -0.0957369        0.0827971
ic8     0.100785          0.086996       0.422544        -0.0860099
ic9    -0.106441         -0.0147895     -0.0516095       -0.0372046
ic10   -0.213701         -0.0109355      0.249371         0.405772
ic11    0.0116356        -0.116538       0.452364         0.207674
ic12    0.134494          0.0626072     -0.104794        -0.0929956
ic13   -0.0725639        -0.0906123     -0.0676836        0.428193
ic14    0.0692472        -0.0158002      0.342671         0.29316
ic15   -0.0672897        -0.00281795     0.471385        -0.0963468
ic16    0.061039         -0.0242279      0.0546211        0.443486
ic17    0.166801         -0.013846       0.401706         0.351363
ic18    0.167256         -0.0069308      0.145542        -0.0761494
ic19   -0.199821         -0.122396      -0.0294933       -0.0706343
ic20   -0.147766         -0.0588937      0.483394         0.0436632
;
Table r(ic,l) radius of circle ic in polygon l
           l1               l2              l3              l4
ic1        0.172298         0.0796472       0.115597        0.103583
ic2        0.0721168        0.0392634       0.0733577       0.0707183
ic3        0.0426432        0.0344374       0.0465576       0.0482627
ic4        0.147282         0.0193508       0.0354042       0.0426693
ic5        0.0296082        0.0149092       0.0294922       0.0329148
ic6        0.0198242        0.0558899       0.0919602       0.0224713
ic7        0.0856934        0.0521638       0.0198447       0.0855684
ic8        0.0715103        0.0124243       0.018724        0.017562
ic9        0.0136018        0.009541        0.064007        0.0664111
ic10       0.0105387        0.0275266       0.0583422       0.0153479
ic11       0.160345         0.00644296      0.0118853       0.0582353
ic12       0.0377009        0.0313096       0.0108228       0.0106093
ic13       0.0545569        0.0224823       0.047702        0.0104785
ic14       0.103087         0.00471135      0.0369206       0.039695
ic15       0.121366         0.0666785       0.00755993      0.00724249
ic16       0.111237         0.0642244       0.102744        0.00715003
ic17       0.0054728        0.0135077       0.0233398       0.0270842
ic18       0.00504557       0.0468904       0.0822021       0.0273596
ic19       0.0210178        0.00276015      0.0858184       0.0329814
ic20       0.0604435        0.0425717       0.00475591       0.093925
;

Table x(i,l) x of vertex i in polygon l
        l1               l2              l3               l4
i1     -0.172335        -0.156025        0.115616        -0.273873
i2      0.327665        -0.0360254       0.115616         0.226127
i3      0.217665         0.233975       -0.184384        -0.0738734
i4     -0.172335         0               0                0
;

Table y(i,l) y of vertex i in polygon l
        l1               l2               l3              l4
i1      0.172335        -0.126795         0.504384        0.476384
i2      0.172335         0.103205        -0.115616       -0.103616
i3     -0.117665        -0.0167947       -0.115616       -0.103616
i4     -0.227665         0                0               0
;




*Equations

Equation eq6(l) insures s_l and c_l are the sine and cosine of some angle;
eq6(l).. power(s(l),2)+power(c(l),2) =E= 1;

Equation eq7(ic,j,k,l) insures cirlces from different polygons do not overlap;
eq7(ic,j,k,l) $(ord(j) < ord(l))..
power(c(j)*a(ic,j) -s(j)*b(ic,j) +h(j) -c(l)*a(k,l) +s(l)*b(k,l) -h(l) ,2)
+power(s(j)*a(ic,j)+ c(j)*b(ic,j) +v(j) -s(l)*a(k,l) -c(l)*b(k,l) -v(l) ,2)
=G=
power(r(ic,j) +r(k,l) ,2);

Equation eq8a(i,j) implicit definition of L;
eq8a(i,j)..
c(j)*x(i,j) - s(j)*y(i,j)+h(j)
=G=
0;

Equation eq8b(i,j) implicit definition of L;
eq8b(i,j)..
c(j)*x(i,j)- s(j)*y(i,j) +h(j) =l= Le;

Equation eq9a(i,j) implicit definition of W (A);
eq9a(i,j)..
s(j)*x(i,j)+c(j)*y(i,j) +v(j) =g= 0;

Equation eq9b(i,j)  implicit definition of W (B);
eq9b(i,j).. s(j)*x(i,j) +c(j)*y(i,j) +v(j) =l= W;

*EQ10  Bounds on sine and cosine of a polygon rotation angles
c.up(l)= 1;
c.lo(l)= -1;
s.up(l)= 1;
s.lo(l)= -1;


Equation eq11a(ic,l) Lower bounds on the horizontal translations;
eq11a(ic,l)$(ord(ic)=1)..h(l)=g= r(ic,l);

Equation eq11b(ic,l) Upper bounds on the horizontal translations;
eq11b(ic,l)$(ord(ic)=1)..h(l)=l= L0-r(ic,l);

Equation eq12a(ic,l) Lower bounds on the vertical translations;
eq12a(ic,l)$(ord(ic)=1)..v(l)=g= r(ic,l);

Equation eq12b(ic,l) Upper bounds on the vertical translations;
eq12b(ic,l)$(ord(ic)=1)..v(l)=l= W-r(ic,l);

*Eq13  Upper and lower bounds on the lengths of the nest
Le.up=L0;
Le.lo=0.2;

Equation eq14(l) redundancy-breaking constraint;
eq14(l)$(ord(l)=1) .. s(l)=g= 0;




model nesting /all/;


Option QCP = BARON;
*Option QCP = LINDOGlobal;
*Option QCP = GloMIQO;
Option optcr=0.05;
*Time limit
Option RESLIM=1000000000;


Solve nesting using QCP minimizing Le;

* This is added to make GMAS output zero values to excel..
Scalar EPSS Excel deleting 0 values /1e-36/;
Le.l=Le.l+EPSS;
s.l(l)=s.l(l)+EPSS;
c.l(l)=c.l(l)+EPSS;
h.l(l)=h.l(l)+EPSS;
v.l(l)=v.l(l)+EPSS;

execute_unload 'results.gdx', Le, s, c, h, v;
execute 'gdxxrw.exe results.gdx o=Nesting.xls var=Le rng=sheet1!A2 var=v rng=sheet1!A4 var=h rng=sheet1!A8 var=s rng=sheet1!A12 var=c rng=sheet1!A16';
