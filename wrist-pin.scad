//OpenMoto Trials Namwe Board
//Licensed under the TAPR Open Hardware License (www.tapr.org/OHL)
//This model created by Aaron Monger (amonger@gmail.com)
//For this model and more new designs, visit mongerrr.github.io
//If you would like to support the design of parts like these, please make a donation, however big or small at paypal.me/mongerrr

$fn=250;
pin = 16/2;
bore = 65;

pin1=pin-0.2;
difference(){
    cylinder(r=pin1,bore);
    cylinder(r=2.5,bore);
    translate([0,-2.5,0])cube([pin,5,bore]);
};