//OpenMoto Trials Namwe Board
//Licensed under the TAPR Open Hardware License (www.tapr.org/OHL)
//This model created by Aaron Monger (amonger@gmail.com)
//For this model and more new designs, visit mongerrr.github.io
//If you would like to support the design of parts like these, please make a donation, however big or small at paypal.me/mongerrr

$fn=250;
id1 = 56.2 - 10;
id2 = 56.2 - 10;
gap = 20.8;
h = 32;
h2 = 48-h;
pin = 16/2;
pincl = 15.3-11.3;

r1 = (id1+10)/2;
r2 = id2/2;


difference(){
union(){
translate([0,0,h])cylinder(r=r1,h2);
translate([-gap/2,-(id2-10)/2,0])cube([gap,id2-10,h]);
hull(){
translate([-id1/2+10,-0.8,h+0.2])rotate([20,0,0])cube([id1-20,8,id1]);
translate([0,-r2+7,h])sphere(1);
};
};
translate([-500,0,h-pin-pincl])rotate([0,90,0])cylinder(r=pin,1000);
translate([-50,2,h+6])cube([100,14,id1]);
translate([-6,15.8,h-h2-pincl])rotate([20,0,0])cube([12,8,50]);
translate([-6,16,h2+1.5])cube([12,24,1.8*pin]);
translate([0,6,h2-1])cube([16,id2/2,5]);
};