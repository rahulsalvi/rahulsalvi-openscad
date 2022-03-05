module honeycomb(hexagon_d, linewidth, rows, cols, fillet=0) {
    x_spacing = 2*(hexagon_d/2)*cos(30)+linewidth;
    y_spacing = tan(60)*x_spacing/2;
    for (j = [0:rows-1]) {
        hex_offset = (j % 2 == 0) ? 0 : x_spacing/2;
        extra = (j % 2 == 0) ? 0 : 1;
        for (i = [0:cols-1+extra]) {
            translate([i*x_spacing - hex_offset, j*y_spacing]) rotate(90) offset(r=+fillet) offset(delta=-fillet) circle(d=hexagon_d, $fn=6);
        }
    }
}
