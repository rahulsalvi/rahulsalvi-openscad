module rounded_rect(dim, fillet_r) {
    x = dim.x / 2 - fillet_r;
    y = dim.y / 2 - fillet_r;
    hull() {
        translate([ x,  y]) circle(r = fillet_r);
        translate([ x, -y]) circle(r = fillet_r);
        translate([-x,  y]) circle(r = fillet_r);
        translate([-x, -y]) circle(r = fillet_r);
    }
}
