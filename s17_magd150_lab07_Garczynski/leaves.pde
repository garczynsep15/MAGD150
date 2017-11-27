class Leaves {
  int green ;
  PVector position ;
  PVector velocity ;
  PVector acceleration ;
  float topspeed, startX, startY ;

  Leaves(int g) {
   green = g ;
   position = new PVector(random(-25, width),random(-25, height));
   velocity = new PVector(0,0);
   topspeed = 1;
   startX = position.x ;
   startY = position.y ;
  }
  
  void update() {
    // if the mouse is currently close to the leaf, it will move
    if (abs(mouseX - startX) < 100 && abs(mouseY - startY) <100) {
      PVector mouse = new PVector(mouseX,mouseY);
      acceleration = PVector.sub(mouse,position);
      if (abs(position.x - mouseX) < 50 || abs(position.y - mouseY) < 50) {
        // make it so the leaves don't just go off into oblivian. They have to stop eventually
        // change the vector values for the leaves
        acceleration.setMag(-0.1);
        acceleration.mult(0.1);
        velocity.add(acceleration);
        velocity.limit(topspeed);
        position.add(velocity);
      }
    } else {
      // move the leaf back if the mouse is gone
      PVector origin = new PVector(startX, startY) ;
      acceleration = PVector.sub(origin,position);
      // Set magnitude of acceleration
      acceleration.setMag(0.1);
      acceleration.mult(1);
      velocity.add(acceleration);
      velocity.limit(topspeed);
      position.add(velocity);
    }// end if
  } // end update
  
  void display() {
    fill(0, green, 0) ;
    triangle(position.x, position.y, position.x + 50, position.y, position.x + 25, position.y +50) ;
  }
}