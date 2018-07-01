dia = 480;
width = 450;
nudge = 20;

degree = 20;
pinDia = 150;




difference() {
    difference() {
        difference() {
            translate([0,0,width/2]){
                cube([width-10,width-10,width/2],center=true);
            }
            difference() {
                translate([-width/2,0,0]) {
                    rotate(a=[0,90,0]) {
                        // Achse
                        cylinder(h=width,d=dia);
                    };
                }
                rotate(a=[degree,0,0]) {
                    // Federbein
                    cylinder(h=600,d=pinDia,center=true);
                };
            };
        }
        translate([-width/2,0,0]) {
            rotate(a=[0,90,0]) {
                // Federbein Nut
                cylinder(h=width,d=dia-50);
            };
        }
    }
    translate([0,width/4,width/4]){
        cube([width,width/2,width/2.5], center=true);
    }
}