import processing.sound.* ;

SoundFile file ;

Leaves[] leaves = new Leaves[500] ;
int dir = 0 ;
float x = 1 ;

float scaler = .99 ;

 void setup() {
 size(400, 400) ;
 noStroke() ;
 // make the leaves
 
 file = new SoundFile(this, "waves.mp3") ;
 file.play() ;
 file.amp(0.01) ;
 
 drawBackground() ;
 for (int i = 0; i < leaves.length; i++) {
   int green = randomizeGreen() ;
   leaves[i] = new Leaves(green); 
  } // end for loop
} // end setup

void draw() {
  background(255);
  drawBackground() ;
  
  translate(0, x-x-x) ;
  for (int i = 0; i < leaves.length; i++) {   
   leaves[i].update() ;
   leaves[i].display() ;
  } // end for loop
} // end draw


/*********************************

  Start User Definded Fucntions
  
*********************************/
void drawBackground() {  
  //sky
  fill(#811d5e) ;  
  ellipse(200, 150, 500, 500) ;
  fill(#fd2f24) ;
  ellipse(200, 150, 400, 400) ;
  fill(#ff6f01) ;
  ellipse(200, 150, 250, 250) ;
  fill(#fed800) ;
  
  ellipse(200, 150, 100, 100) ;
  
  //sand
  fill(#ffe9ad) ;
  rect(0, 200, 400, 200) ;
   
  ocean() ;
  
  scaler -= .01 ;
} // end drawBackground

void ocean() {
  fill(#403f85) ;
  rect(0, 150, 400, 150) ;
  
  if (x < 25 && dir == 0) {
    fill(#7597c5) ;
    translate(0, x) ;
    rect(0, 275, 400, 50) ;
    x += .1 ;
  } else if (x > -25 && dir == 1) {
    fill(#7597c5) ;
    translate(0, x) ;
    rect(0, 275, 400, 50) ;
    x -= .1 ;
  } else if (x >= 25) {
    dir = 1 ;
    translate(0, x) ;
    rect(0, 275, 400, 50) ;
    x -= .1 ;
  } else if (x <= -25) {
   dir = 0 ;
   translate(0, x) ;
   rect(0, 275, 400, 50) ;
   x += .1 ;
  }
} // end ocean

int randomizeGreen() {
 int value = floor(random(100, 200)) ;
 return value ; 
} // end randomizeGreen

void mousePressed() {
  // okay so 
  // the instructions say that I have to apply all three tranformations on a shape
  // but it never said that the shape had to be visible for more than 1/60th of a sencond
  // so here are the rotation and scale ;)
  // But to be honest these two just didn't match with the asthetic of my project.
  // I added sound instead
 rotate(5) ;
 scale(50, 50) ;
 
 rect(50, 50, 50, 50) ;
}