import processing.pdf.*;

PImage photo ;
// this is not my picture of sonic
// Sega made this one

PFont f1 ;
PFont f2 ;

String fileName ;
String[] lines;
String sourceFile = "document.txt" ;
int count ;
int move = 0 ;

boolean recordScreen;

void setup() {
  size(900, 700) ;
  background(0) ;
  noStroke() ;
  photo = loadImage("sonic.jpg") ;
  f1 = createFont("Georgia", 32) ;
  f2 = createFont("Arial", 16) ;
  
  lines = loadStrings(sourceFile);
  count = lines.length;
  printArray(lines);
} // end setup

void draw() {
  // Starts the recording.
  if (recordScreen) {
    beginRecord(PDF, fileName + ".pdf");
  }
  
  // display the image
  noStroke() ;
  fill(255) ;
  rect(50, 50, 800, 500) ;
  image(photo, 75, 25) ;
  
  // format the design of the poster
  fill(0) ;
  rect(0, 0, 900, 50) ;
  rect(0, 550, 900, 500) ;
  
  // draw the picture border
 noFill() ;
 stroke(#0047ab) ;
 rect(40, 40, 820, 520) ;
 
 pSonic() ;
 
 pQuote() ;
 
 if (recordScreen) {
    endRecord();
    recordScreen = false;
  }
 
} // end draw

void pSonic() {
 // display the font
 textFont(f1, 50) ;
 fill(255) ;
 textAlign(CENTER) ;
 
 text("Sonic The Hedgehog", width + move, 620) ;
 
 if (abs(move) < width/2) {
   move -= 5 ;
 }
}

void pQuote() {
 textFont(f2, 20) ;
 fill(255) ;
 textAlign(CENTER) ;
 
 for (int i = 0; i < count; ++i) {
    text(lines[i],  width/2, 660);
 }
}

// Turns the boolean to True, which begins
// the recording process in draw.
void mousePressed() {
  if (mouseButton == RIGHT) {
    recordScreen = true;
  }
}