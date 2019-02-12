#include "colors.inc"

//background { color Gray }
          
camera{
    location <3, 2, 5>
    look_at <0, 0, 0>
}

light_source { <0, 10, -5> color White }

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

#declare cloud=union{
    // comprised of 5 spheres with a rotation
}

object{train}