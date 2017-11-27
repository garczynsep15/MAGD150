int maxheight = 200 ;
int minheight = 375 ;
int currentheight =maxheight ;
int i = 5 ;
boolean isdown = true ;
int location = 200 ;
boolean mouse = false ;
int bg = 200 ;
void setup() {
 size(400, 400) ;
 background(bg) ;
 noStroke() ;
 ellipse(200, 200, 50, 50) ;
} // end setup

void draw() {
 
 while (keyPressed == true) {
  bg = floor(random(255)) ;
  keyPressed = false ;
 }
 if (mouse == false) { //if you arent using the mouse
  background(bg) ;
  if (maxheight < minheight) { // to make sure the ball should still bounce
   if (isdown == true) { // to make the ball go down
    currentheight = currentheight + i ;
    ellipse(location, currentheight, 50, 50) ;
   }
   if (currentheight >= minheight) { // to stop the ball from going down
    maxheight = maxheight + 25 ;
    currentheight = currentheight - i ;
    isdown = false ;
    ellipse(location, currentheight, 50, 50) ;
   } 
   if (isdown == false) { // to make the ball goes up
     currentheight = currentheight - i ;
     ellipse(location, currentheight, 50, 50) ;
   }
   if (currentheight <= maxheight) { // to make the ball stop going up
    currentheight = currentheight + i ;
    isdown = true ;
    ellipse(location, currentheight, 50, 50) ;
   }
  } else if (maxheight >= minheight) { // to stop the ball from bouncing
    ellipse(location, minheight, 50, 50) ;
  } // end motion if else if
 } // end mouse if
} // end draw

void mouseDragged() {
  background(bg) ;
  mouse = true ;
  ellipse(mouseX, mouseY, 50, 50) ;
  maxheight = mouseY ;
  currentheight = maxheight ;
  location = mouseX ;
}

void mouseReleased() {
  mouse = false ;
  fill(random(255), random(255), random(255)) ;
}