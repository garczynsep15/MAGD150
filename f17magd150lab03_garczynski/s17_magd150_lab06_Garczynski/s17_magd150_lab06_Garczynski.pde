int red ;
int green ;
int blue ;

int shapeCase = 1 ;

Shape shape1 ;
Shape shape2 ;
Shape shape3 ;
Shape shape4 ;
Shape shape5 ;

void setup() {
 size(500, 500) ;
 background(255) ;
 frameRate(12) ;
 noStroke() ;
 
 shape1 = new Shape(0, 0, 500, 60) ;
 shape2 = new Shape(50, 50, 400, 70) ;
 shape3 = new Shape(100, 100, 300, 80) ;
 shape4 = new Shape(150, 150, 200, 90) ;
 shape5 = new Shape(200, 200, 100, 100) ;
 // I also tried making the opacity more varied (by 20)
 // but then it turned shape1 grey and there was less variation in color
 // So I put it back to only 10
} // end setup

void draw() {
  
  // I originally had it all change at once but I thought it would look cooler as a waterfall
  // and I was right
/*  
  red = randomizeRed() ;
  green = randomizeGreen() ;
  blue = randomizeBlue() ;
  
  shape1.changeColor(red, green, blue) ;
  shape2.changeColor(red, green, blue) ;
  shape3.changeColor(red, green, blue) ;
  shape4.changeColor(red, green, blue) ;
  shape5.changeColor(red, green, blue) ;
*/

  // I also tried changing the color every time 
  // But I think the colors generated were better when it was the same color
//    red = randomizeRed() ;
//    green = randomizeGreen() ;
//    blue = randomizeBlue() ;
    
    
  switch(shapeCase) {
   case 1:
    red = randomizeRed() ;
    green = randomizeGreen() ;
    blue = randomizeBlue() ;
  
    shape1.changeColor(red, green, blue) ;
    break ;
   case 2:
    shape2.changeColor(red, green, blue) ;
    break ;
   case 3:
    shape3.changeColor(red, green, blue) ;
    break ;
   case 4:
    shape4.changeColor(red, green, blue) ;
    break ;
   case 5:
    shape5.changeColor(red, green, blue) ;
    break ;
   default:
     println("The program is taking a break") ; // just to make sure it works
  } // end switch case
  
  shapeCase += 1 ;
  if (shapeCase > 15)
    shapeCase = 1 ;
} // end draw


/*********************************

  Start User Definded Fucntions
  
*********************************/

int randomizeRed() {
 int value = floor(random(255)) ;
 return value ; 
}

int randomizeGreen() {
 int value = floor(random(255)) ;
 return value ; 
}

int randomizeBlue() {
 int value = floor(random(255)) ;
 return value ; 
}