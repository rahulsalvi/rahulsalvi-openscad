module rounded_extrude(height, r1, r2, fn) {
    translate([0,0,r1]) linear_extrude(height-r1-r2) children();
    for (i = [0:fn-1]) {
        dz = r1/fn;
        z = i*dz;
        translate([0,0,z])
        linear_extrude(dz)
        offset((sqrt(pow(r1,2)-pow(r1-z,2)))-r1)
        children();
    }
    translate([0,0,height-r2])
    for (i = [0:fn-1]) {
        dz = r2/fn;
        z = i*dz;
        translate([0,0,z])
        linear_extrude(dz)
        offset(sqrt(pow(r2,2)-pow(z,2))-r2)
        children();
    }
}
