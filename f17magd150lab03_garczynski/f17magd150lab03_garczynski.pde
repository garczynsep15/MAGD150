int size = 50 ;
int r = 255 ;
float g = 3.6 ;
float b = 4.5 ;

void setup() {
 size(500, 500) ;
 background(200) ;
 noStroke() ;
  rect(25, 25, 450, 450, 50, 50, 50, 50) ;
}

void draw() {
//  mousePressed() ;

}


// This function is called every time the mouse is pressed
void mousePressed() {
  // It sets the fill color depending on the variables for r, g, and b
  // max will use whichever number is bigger
  // ex: max(100, 30) will use 100 because it is bigger
  // floor rounds a floating decimal number down
  // ceil round a floating decimal number up
  // min will use whichever number is smaller
  // ex: min(100, 30) will use 30 becuase it is smaller
  fill(max(100, floor(255/r)), min(20, ceil(255/g)), max(50, 255%b), 50) ;
  noStroke() ;
  
  // mouseX and mouseY decided where the center of the circle is
  // they base it off of the current location of the mouse
  // height and width are determined byt the size() from the beginning
  // % is used to divede a number and then takes the remainder.
  // ex:   10%4 = 10/4 = 8 with a remainder of 2 so the answer is 2
   ellipse(mouseX, mouseY, max(20, height%size), max(20, width%size)) ;
   
   // this adds 1 to size
   // you can also write it as size = size + 1 ;
   size++ ;
   
   // this is a shorter way to write r = r - 5
   // and g = g + 6
   r -= 5 ;
   g += 6 ;
   b += 4 ;
   
   
   // this checks to see if size is greater or equal to 500
   // if it is, size is changed to 50
   if (size>= 500) {
    size = 50 ;
   }
  if (r <= 1)
    r= 255 ;
  
  if (g > 255)
    g = 1 ;
    
  if (b > 255)
    b = 4 ;

    
// print prints out whatever you put in the ()
// a string goes between " " 
// you can just write a variable normally
// ex:  print(r) ; would just print the r value
// If you want to include multiple variables and strings, you must use a + sign
    print("Red: " + r + ", ") ;
    print("Green: " + g + ", ") ;
    print("Blue: " + b + ", ") ;
   
}


// This funtion is called every time a key is pressed
void keyPressed() {
  // This part tells you which key you want to be pressed.
  // So if the up arrow key is pressed, it will make a new white square
  // it will only work if the up arrow is pressed
 if (keyCode == UP) {
   fill(255, 255, 255) ;
   rect(25, 25, 450, 450, 50, 50, 50, 50) ;
  }
}