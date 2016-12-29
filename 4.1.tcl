wipe
puts "System"
model basic -ndm 3 -ndf 3
puts "restraint"
node 1 0.000E+000 0.000E+000 0.000E+000
node 2 7.620E+004 0.000E+000 1.143E+005
node 3 1.524E+005 0.000E+000 0.000E+000
node 4 2.286E+005 0.000E+000 1.143E+005
node 5 3.048E+005 0.000E+000 0.000E+000
node 6 3.810E+005 0.000E+000 1.143E+005
node 7 4.572E+005 0.000E+000 0.000E+000
node 8 5.334E+005 0.000E+000 1.143E+005
node 9 6.096E+005 0.000E+000 0.000E+000
node 10 0.000E+000 7.620E+004 0.000E+000
node 11 7.620E+004 7.620E+004 1.143E+005
node 12 1.524E+005 7.620E+004 0.000E+000
node 13 2.286E+005 7.620E+004 1.143E+005
node 14 3.048E+005 7.620E+004 0.000E+000
node 15 3.810E+005 7.620E+004 1.143E+005
node 16 4.572E+005 7.620E+004 0.000E+000
node 17 5.334E+005 7.620E+004 1.143E+005
node 18 6.096E+005 7.620E+004 0.000E+000
puts "rigidDiaphragm"
puts "node"
fix 1 1 1 1 0 0 0;
fix 9 1 1 1 0 0 0;
fix 10 1 1 1 0 0 0;
fix 18 1 1 1 0 0 0;
puts "Equal DOF"
puts "material"
uniaxialMaterial Elastic 1 1.379E+006
uniaxialMaterial Elastic 2 2.482E+004
uniaxialMaterial Elastic 3 1.999E+005
##TH300X300X15X15 
section Fiber 1 {
fiber -3.048E+003 -3.620E+003 5.806E+005 1
fiber -1.524E+003 -3.620E+003 5.806E+005 1
fiber 0.000E+000 -3.620E+003 5.806E+005 1
fiber 1.524E+003 -3.620E+003 5.806E+005 1
fiber 3.048E+003 -3.620E+003 5.806E+005 1
fiber -3.048E+003 3.620E+003 5.806E+005 1
fiber -1.524E+003 3.620E+003 5.806E+005 1
fiber 0.000E+000 3.620E+003 5.806E+005 1
fiber 1.524E+003 3.620E+003 5.806E+005 1
fiber 3.048E+003 3.620E+003 5.806E+005 1
fiber 0.000E+000 -2.743E+003 5.226E+005 1
fiber 0.000E+000 -1.372E+003 5.226E+005 1
fiber 0.000E+000 0.000E+000 5.226E+005 1
fiber 0.000E+000 1.372E+003 5.226E+005 1
fiber 0.000E+000 2.743E+003 5.226E+005 1
}
##TH300X500X20X20 
section Fiber 2 {
fiber -3.048E+003 -6.096E+003 7.742E+005 1
fiber -1.524E+003 -6.096E+003 7.742E+005 1
fiber 0.000E+000 -6.096E+003 7.742E+005 1
fiber 1.524E+003 -6.096E+003 7.742E+005 1
fiber 3.048E+003 -6.096E+003 7.742E+005 1
fiber -3.048E+003 6.096E+003 7.742E+005 1
fiber -1.524E+003 6.096E+003 7.742E+005 1
fiber 0.000E+000 6.096E+003 7.742E+005 1
fiber 1.524E+003 6.096E+003 7.742E+005 1
fiber 3.048E+003 6.096E+003 7.742E+005 1
fiber 0.000E+000 -4.674E+003 1.187E+006 1
fiber 0.000E+000 -2.337E+003 1.187E+006 1
fiber 0.000E+000 0.000E+000 1.187E+006 1
fiber 0.000E+000 2.337E+003 1.187E+006 1
fiber 0.000E+000 4.674E+003 1.187E+006 1
}
puts "transformation"
puts "element"
element trussSection 1 1 2 1
element trussSection 2 3 2 1
element trussSection 3 3 4 1
element trussSection 4 5 4 1
element trussSection 5 5 6 1
element trussSection 6 7 6 1
element trussSection 7 7 8 1
element trussSection 8 9 8 1
element trussSection 9 10 11 1
element trussSection 10 12 11 1
element trussSection 11 12 13 1
element trussSection 12 14 13 1
element trussSection 13 14 15 1
element trussSection 14 16 15 1
element trussSection 15 16 17 1
element trussSection 16 18 17 1
element trussSection 17 11 2 2
element trussSection 18 2 4 2
element trussSection 19 4 13 2
element trussSection 20 11 13 2
element trussSection 21 8 17 2
element trussSection 22 15 17 2
element trussSection 23 13 15 2
element trussSection 24 4 6 2
element trussSection 25 6 15 2
element trussSection 26 6 8 2
element trussSection 27 11 4 1
element trussSection 28 4 15 1
element trussSection 29 15 8 1
element trussSection 30 1 3 2
element trussSection 31 3 5 2
element trussSection 32 5 7 2
element trussSection 33 7 9 2
element trussSection 34 9 18 2
element trussSection 35 16 18 2
element trussSection 36 14 16 2
element trussSection 37 12 14 2
element trussSection 38 10 12 2
element trussSection 39 16 7 2
element trussSection 40 14 5 2
element trussSection 41 3 12 2
element trussSection 42 10 1 2
element trussSection 43 10 3 1
element trussSection 44 3 14 1
element trussSection 45 14 7 1
element trussSection 46 7 18 1
puts "shell element"
puts "SOLID element"
puts "recorder"
recorder Node -file node0.out -time -nodeRange 1 18 -dof 1 2 3 disp

recorder Element -file ele0.out -time -eleRange 1 46 localForce
recorder Element -file ele0_secs.out -time -eleRange 1 46 section 1 deformation
recorder Element -file ele0_secn.out -time -eleRange 1 46 section 3 deformation
recorder Node -file eigen1_node0.out -time -nodeRange 1 18 -dof 1 2 3 "eigen 1"
recorder Node -file eigen2_node0.out -time -nodeRange 1 18 -dof 1 2 3 "eigen 2"
recorder Node -file eigen3_node0.out -time -nodeRange 1 18 -dof 1 2 3 "eigen 3"
recorder Node -file eigen4_node0.out -time -nodeRange 1 18 -dof 1 2 3 "eigen 4"
recorder Node -file eigen5_node0.out -time -nodeRange 1 18 -dof 1 2 3 "eigen 5"
recorder Node -file eigen6_node0.out -time -nodeRange 1 18 -dof 1 2 3 "eigen 6"
recorder Node -file eigen7_node0.out -time -nodeRange 1 18 -dof 1 2 3 "eigen 7"
recorder Node -file eigen8_node0.out -time -nodeRange 1 18 -dof 1 2 3 "eigen 8"
recorder Node -file eigen9_node0.out -time -nodeRange 1 18 -dof 1 2 3 "eigen 9"
recorder Node -file eigen10_node0.out -time -nodeRange 1 18 -dof 1 2 3 "eigen 10"
recorder Node -file eigen11_node0.out -time -nodeRange 1 18 -dof 1 2 3 "eigen 11"
recorder Node -file eigen12_node0.out -time -nodeRange 1 18 -dof 1 2 3 "eigen 12"
recorder Node -file node5.out -time -node 5 -dof 1 2 3 disp
puts "loading"
## Load Case = DEAD
pattern Plain 1 Linear {
load 4 0.000E+000 0.000E+000 -1.000E+005 
load 6 0.000E+000 0.000E+000 -1.000E+005 
load 13 0.000E+000 0.000E+000 -1.000E+005
load 15 0.000E+000 0.000E+000 -1.000E+005
}
puts "analysis"
constraints Plain
numberer Plain
system BandGeneral
test EnergyIncr 1.0e-6 200
algorithm Newton
integrator LoadControl 1.000E-002
analysis Static
analyze 100
