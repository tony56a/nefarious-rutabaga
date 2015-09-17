include <rounded_rect.scad>

pegHoles = [22.5,18.5,9.2];

difference(){
translate([0,0,4]){
translate([0,0,12.5]){
rotate([90,0,180]){
#import("/Users/applepie/Downloads/nokia-5110-3310-monochrome-lcd-1.snapshot.11/Nokia_5110-3310_LCD_asm_lower_header.STL");
}
}


union(){
    difference(){
        translate([18,-25,2]){
            cube([7,50,9.2]);
        }
        translate(pegHoles){
                cylinder($fn=10,r=1.6,h=10,center=true);
        }
        mirror([0,1,0]){
         translate(pegHoles){
                cylinder($fn=10,r=1.6,h=10,center=true);
        }   
        }
    }
    mirror([1,0,0]){
        difference(){
        translate([18,-25,2]){
            cube([7,50,9.2]);
        }
        translate(pegHoles){
                cylinder($fn=10,r=1.6,h=10,center=true);
        }
        mirror([0,1,0]){
            translate(pegHoles){
                cylinder($fn=10,r=1.6,h=10,center=true);
            } 
        }
    }
}

    
    difference(){
        #linear_extrude( height=21){
            roundedSquare(47,47,4);
        }
        translate([-9,24,2]){
            #cube([18,7,7.5]);
        }
        
            translate([0,0,2]){
                linear_extrude( height=17){
                    roundedSquare(44,44,4);
                }
            }  
         
        translate([0,0,18]){
                linear_extrude( height=17){
                    roundedSquare(44,44,4);
                }
            }  
            
        translate([0,-1,17]){
            difference(){
                linear_extrude(height=2){
                    roundedSquare(45,47,4);
                }
                
            }
        }
        

 }
    
   
    translate([70,0,0]){
            difference(){
                linear_extrude(height=2){
                    roundedSquare(45,45,4);
                }
                translate([0,4,0]){
                linear_extrude(height=2){
                    roundedSquare(33,22,2);
                }
                }
            }
        }
}
}

mirror([1,0,0]){
    translate([18,-25,0]){
    #cube([5,50,6.5]);
    }
}

translate([18,-25,0]){
    #cube([5,50,6.5]);
}

}
