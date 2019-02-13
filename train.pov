#include "colors.inc"

//background { color Gray }
          
camera{
    location <5, 0, 0>
    look_at <0, 0, 0>
}

light_source { <0, 10, -5> color White }   

// skysphere function taken from POV-Ray documentation http://www-f9.ijs.si/~matevz/docs/PovRay/pov99.htm
sky_sphere {

    pigment {

      gradient y

      color_map {

        [0 color White]

        [1 color Blue]

      }

      scale 1.75

      translate -1

    }

}

// plane for the train to drive on - taken from the notes - slightly modified
plane {
    <0, 1, 0>, -0.325
    pigment{color rgb<0.8,0.25,0.1>} 

}

#declare train=union { 
    // box for the base of the train - rectangular
    box{ <-1.5,-0.25,-0.5>, <1.5,0.5,0.5> pigment { Red } }
    // box for the conductors cabin
    box { <-1.5,0,-0.5>, <-0.5,1.25,0.5> pigment { Red } }
    
    // roof box for the conductors cabin
    box { <-1.65,1.25,-0.65>, <-0.5,1.3,0.65> pigment { Cyan } }
    
    // cylinder for the engine
    // cylinders vectors are where it starts and where it ends, followed by it's radius, then pigment
    cylinder { <-0.5,0.5,0>, <1.5,0.5,0>, 0.5 pigment { Red } }
    
    // cylinder for spout
    cylinder { <1,0,0>, <1,1.5,0>, 0.3 pigment {Red} }
    
    // cone to finish it off
    cone { <1,1.5,0>, .3, <1,1.8,0>, 0.5 pigment { Red } }   
    
    // wheels... because every train needs wheels - use flat cylinders 
    // **** LEFT SIDE ****
    // front left
    cylinder { <1,-0.08,0.5>, <1, -0.08, 0.65>,0.25 pigment { Gray } }
    // middle left
    cylinder { <0.2,-0.08,0.5>, <0.2, -0.08, 0.65>,0.25 pigment { Gray } }
    // back left 
    cylinder { <-0.65,-0.08,0.5>, <-0.65, -0.08, 0.65>,0.25 pigment { Gray } }
    
    // **** REIGHT SIDE ****
    // front right                     
    cylinder { <1,-0.08,-0.5>, <1, -0.08, -0.65>,0.25 pigment { Gray } }
    // middle right
    cylinder { <0.2,-0.08,-0.5>, <0.2, -0.08, -0.65>,0.25 pigment { Gray } }
    // back right         
    cylinder { <-0.65,-0.08,-0.5>, <-0.65, -0.08, -0.65>,0.25 pigment { Gray } }
  
}  

#declare stopsign=union {
    // cylinder base for the poll  
    cylinder { <3,0,-2>, <3,1.5,-2>, 0.075 pigment {Gray} }
    // cylinder for the sign itself  
    cylinder { <3,1.5,-2.1>, <3,1.5,-2>, 0.25 pigment {Red}}

}

object{train}
object{stopsign rotate <0,90,0> translate <5,-0.325,4>}
