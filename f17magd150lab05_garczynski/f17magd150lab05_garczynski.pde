//location for the circle button
float cx = 150;
float cy = 50;
float cw = 100;
float ch = 100;

//location for the square button
float rx = 150;
float ry = 250;
float rw = 100;
float rh = 100;

// these are the y locations for all of those rectangles that move when you press the buttons
float r1 = -600 ;
float r2 = -400 ;
float r3 = -200 ;
float r4 = 0 ;
float r5 = 200 ;
float r6 = 300 ;
float r7 = 500 ;
float r8 = 700;

void setup() {
 size(400, 400) ;
 background(255) ;
 noStroke() ;
} // end setup

void draw() {
  
  // this calls the earth() function and generates the rectangles that represent the planet
  earth() ;
  
  // this is the default state if no mouse is being pressed
  // it draws the two buttons
  if(!mousePressed) {
  fill(255, 201, 14) ;
  ellipse(200, 100, 100, 100) ;
  fill(0) ;
  text("ascend", 180, 100) ;
  fill(237, 28, 36) ;
  rect(150, 250, 100, 100) ;
  fill(0) ;
  text("descend", 175, 300) ;
  }
  
  // if the circle button is pressed, it calls the up function which changes the location of the earth rectangles
  if(mousePressed){
  if(mouseX>cx && mouseX <cx+cw && mouseY>cy && mouseY <cy+ch){
   up() ; // calling the up funtion
   fill(255, 201, 14) ;
   ellipse(200, 100, 100, 100) ; // and then I have it only draw the circle button, so the square one dissapears
  }
 }
  
  // if the square button is pressed, it calls the down function which also changes the location of the earth rectangles
  if(mousePressed){
  if(mouseX>rx && mouseX <rx+rw && mouseY>ry && mouseY <ry+rh){
   down() ; // clling the down function
   fill(237, 28, 36) ;
   rect(150, 250, 100, 100) ; // and then it only draws the square button
  }
 }
 
 // If you wanted to combine the mouse pressed statements, you could write it like this:
/*
if (mousePressed) { // check if the mouse is down
  if(mouseX>cx && mouseX <cx+cw && mouseY>cy && mouseY <cy+ch){ // check if it is in the location of the circle button
   up() ; // calling the up funtion
   fill(255, 201, 14) ;
   ellipse(200, 100, 100, 100) ; // and then I have it only draw the circle button, so the square one dissapears
  } else if(mouseX>rx && mouseX <rx+rw && mouseY>ry && mouseY <ry+rh){ // if it isn't where the circle one is, check to see if it is where the square one is
   down() ; // clling the down function
   fill(237, 28, 36) ;
   rect(150, 250, 100, 100) ; // and then it only draws the square button
  } 
} // end if
*/

} // end draw



// This is the earth funtion which draws the colored rectangles every frame
void earth() {
  
  fill(0) ;
  rect(0, r1, 400, 200) ;
  fill(63, 72, 204) ;
  rect(0, r2, 400, 200) ;
  fill(0, 162, 232) ;
  rect(0, r3, 400, 200) ;
  fill(153, 217, 234) ;
  rect(0, r4, 400, 200) ;
  fill(34, 177, 76) ;
  rect(0, r5, 400, 100) ;
  fill(185, 122, 87) ;
  rect(0, r6, 400, 200) ;
  fill(136, 0, 21) ;
  rect(0, r7, 400, 200) ;
  fill(237, 28, 36) ;
  rect(0, r8, 400, 200) ;
  
} // end earth

// this is the up function which changes the location of the earth rectangles to make them look like tou are going up
void up() {
  print("funtion up is running") ; // I just put this here to make sure it was working
  if (r1 != 0) { // this statement makes sure that the earth rectangles dont just dissapear and go too high/low
    r1 += 5 ;
    r2 += 5 ;
    r3 += 5 ;
    r4 += 5 ;
    r5 += 5 ;
    r6 += 5 ;
    r7 += 5 ;
    r8 += 5 ;
  } // end if
} // end up

// this is the down function. It doest the opposite of the up one.
void down() {
  print("funtion down is running") ;
  if (r8 != 200) { // this statement makes sure that the earth rectangles dont just dissapear and go too high/low
    r1 -= 5 ;
    r2 -= 5 ;
    r3 -= 5 ;
    r4 -= 5 ;
    r5 -= 5 ;
    r6 -= 5 ;
    r7 -= 5 ;
    r8 -= 5 ;
  } // end if
} // end up