void setup() {
 background(#FF4D6E) ;
 size(400, 400) ;
}

void draw() {
  // the strings
  colorMode(RGB, 255, 255, 255, 100) ;
  noFill() ;
  stroke(#E83215) ;
  strokeWeight(2) ;
  bezier(200, 70, 310, 150, 200, 200, 200, 200) ;
  bezier(200, 330, 90, 250, 200, 200, 200, 200) ;
  
  bezier(70, 133, 190, 79, 200, 200, 200, 200) ;
  bezier(70, 267, 94, 153, 200, 200, 200, 200) ;
  
  bezier(330, 133, 305, 250, 200, 200, 200, 200) ;
  bezier(330, 267, 196, 318, 200, 200, 200, 200) ;
  
  
  // the balloons
  noStroke() ;
  fill(255, 126, 36) ;
  ellipse(200, 70, 120, 120) ;
  ellipse(200, 330, 120, 120) ;
//  ellipse(200, 200, 120, 120) ; // this one was just for math purposes
  
  fill(#FFE86A) ;
  ellipse(70, 133, 120, 120) ;
  fill(#FF71B2) ;
  ellipse(70, 267, 120, 120) ;
  

//  fill(39, 91, 91) ; // HEX E89F15
  fill(#FF71B2) ;
  ellipse(330, 133, 120, 120) ;
//  fill(51, 58, 100) ; // HEX #FFE86A
  fill(#FFE86A) ;
  ellipse(330, 267, 120, 120) ;
  
  
  // the shinies
  fill(#FFA65A) ;
  arc(200, 70, 100, 100, radians(180), radians(270), CHORD) ;
  arc(200, 330, 100, 100, radians(0), radians(90), CHORD) ;

  fill(#EAE9AA) ;
  arc(70, 133, 100, 100, radians(135), radians(225), CHORD) ;
  fill(#F9A7FF) ;
  arc(70, 267, 100, 100, radians(90), radians(180), CHORD) ;

  colorMode(HSB, 360, 100, 100, 100) ;
//  fill(#F9A7FF) ;  
  fill(296, 35, 100, 100) ;
  arc(330, 133, 100, 100, radians(225), radians(315), CHORD) ;
//  fill(#EAE9AA) ;  
  fill(59, 27, 92, 100) ;
  arc(330, 267, 100, 100, radians(270), radians(360), CHORD) ;

}