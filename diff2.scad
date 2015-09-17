include <rounded_rect.scad>;


caseHeight = 22;
baseHeight = 2;
holeHeight = 10;
supportPos = [ [34.9,26.8,baseHeight ],
               [34.9,-21.5,baseHeight ],
               [-31.2,23.6,baseHeight ],
               [-31.2,-18.3,baseHeight ]];
               
holePos  = [ [51,33,caseHeight ],
               [51,-32,caseHeight ],
               [-51,32,caseHeight ],
               [-51,-32,caseHeight ]];
union(){
    
    for ( i = supportPos ){
        translate(i){
            #cylinder( $fn=15, r=1.4,h=10);
        }
    }
    
     for ( i = holePos ){
        translate(i){
            #cylinder( $fn=15, r=1.58,h=5);
        }
    }

    /*translate( [52,30]){
        rotate([0,0,180]){
            color([0,1,0])
            import("/Users/applepie/Downloads/BEAGLEBONE_BLACK.STL");
        }
    }*/

difference(){
union(){
 
linear_extrude(height = caseHeight, center = false, convexity = 10, slices = 10, scale = 1.0){
    roundedSquare( 98,65,5);
}



}

translate( [53,0,holeHeight]){
    cube([7,18,16],center=true);
}


translate( [53,20,holeHeight+2]){
    rotate([0,90,0]){
    cylinder(r=5,h=10,center=true);
}

}

translate( [0,0,baseHeight]){
    linear_extrude(height = 25, center = false, convexity = 10,  slices = 10, scale = 1.0){
        roundedSquare( 89,57,5);
    }
}
}
}

