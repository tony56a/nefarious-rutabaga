caseHeight = 22;
baseHeight = 2;
holeHeight = 10;
supportPos = [ [20,20,baseHeight ],
               [20,-20,baseHeight ],
               [-20,20,baseHeight ],
               [-20,-20,baseHeight ]];

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
union(){
    
    for ( i = supportPos ){
    translate(i){
        #cylinder( r=2.5,h=10);
    }
}
difference(){
union(){
 
linear_extrude(height = caseHeight, center = false, convexity = 10,  slices = 10, scale = 1.0){
    roundedSquare( 98,65,5);
}



}

translate( [53,5,holeHeight]){
    #cube([7,18,16],center=true);
}



translate( [53,20,holeHeight]){
    #cube([7,5,16],center=true);
}

translate( [0,0,baseHeight]){
    linear_extrude(height = 25, center = false, convexity = 10,  slices = 10, scale = 1.0){
        roundedSquare( 89,57,5);
    }
}
}
}

