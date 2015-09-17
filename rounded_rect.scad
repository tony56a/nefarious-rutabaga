

module roundedSquare(x,y,radius){
    circles = [ [x/2,y/2],[-x/2,y/2],[x/2,-y/2],[-x/2,-y/2] ];
    union(){
        square([x,y],center=true);
        for( i = circles ){
            translate( i ){
                circle( radius,$fn=25, center=true );
            }
        }
        for( i = [ -1, 1 ] ){
            translate([i*x/2,0]){
                square([radius*2,y],center=true);
            }
            translate([0,i*y/2]){
                square([x,radius*2],center=true);
            }
        }
        
        
    }
}