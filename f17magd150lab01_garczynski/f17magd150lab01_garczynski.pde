void setup() {
 background(30) ;
 size(200, 200) ;
}

void draw() {
  stroke(255) ;
  strokeWeight(1) ;
  fill(255) ;

// THE STARS
  fill(205) ;
  rect(20, 45, 30, 30) ;
  fill(155) ;
  rect(20, 125, 30, 30) ;
  
  fill(205) ;
  rect(150, 45, 30, 30) ;
  fill(155) ;
  rect(150, 125, 30, 30) ;
  
  fill(255) ;
  rect(85, 10, 30, 30) ;
  
  fill(30) ;
  stroke(30) ;
  ellipse(20, 75, 30, 30) ;
  ellipse(50, 75, 30, 30) ;
  ellipse(20, 45, 30, 30) ;
  ellipse(50, 45, 30, 30) ;
  
  ellipse(20, 155, 30, 30) ;
  ellipse(50, 155, 30, 30) ;
  ellipse(20, 125, 30, 30) ;
  ellipse(50, 125, 30, 30) ;
  
  ellipse(150, 75, 30, 30) ;
  ellipse(180, 75, 30, 30) ;
  ellipse(150, 45, 30, 30) ;
  ellipse(180, 45, 30, 30) ;
  
  ellipse(150, 155, 30, 30) ;
  ellipse(180, 155, 30, 30) ;
  ellipse(150, 125, 30, 30) ;
  ellipse(180, 125, 30, 30) ;
  
  ellipse(85, 10, 30, 30) ;
  ellipse(85, 40, 30, 30) ;
  ellipse(115, 10, 30, 30) ;
  ellipse(115, 40, 30, 30) ;
  
  stroke(180) ;
  strokeWeight(5) ;
  point(35, 100) ;
  point(165, 100) ;
  stroke(230) ;
  point(67.5, 42.5) ;
  point(132.5, 42.5) ;
  
  
// BODY OF THE ALIEN
  fill(230) ;
  stroke(230) ;
  strokeWeight(1) ;
  quad(70, 150, 130, 150, 110, 200, 90, 200) ;


// HEAD OF THE ALIEN
  ellipseMode(CENTER) ;
  ellipse(100, 100, 70, 90) ;
  
  fill(30) ;
  ellipse(100, 80, 20, 20) ;
  fill(230) ;
  ellipse(100, 75, 15, 15) ;

  rect(95, 130, 10, 20) ;
  
  stroke(30) ;
  strokeWeight(7) ;
  strokeCap(PROJECT) ;
  line(80, 100, 90, 110) ;
  line(120, 100, 110, 110) ;
}