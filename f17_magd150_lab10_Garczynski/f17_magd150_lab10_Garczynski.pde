PImage back, 
  bottom, 
  front, 
  left, 
  right, 
  top, 
  txtr;
float x, y, z, 
  scale, xRotation, yRotation,
  u, v, uOffset, vOffset, 
  lookAtX, lookAtY, lookAtZ, 
  upX, upY, upZ ;

int r = 255, g = 255, b = 255;

PVector spherePos ;
float sphereRadius;

PVector boxPos ;
PVector boxScale ;

void setup() {
  surface.setResizable(true);
  pixelDensity(displayDensity());
  size(640, 420, P3D);
  background(64);
  noStroke();
  colorMode(RGB, 255, 255, 255);

  // Translation, rotation and scale of the cube.
  x = width / 2.0;
  y = height / 2.0;
  z = -500;
  scale = min(width, height) / 2.0;
  xRotation = 0;
  yRotation = 0;


  spherePos = new PVector(width/2, height/2, 0);
  sphereRadius = 75;
  
  boxPos = new PVector(width/2, height/2, 0);
  boxScale = new PVector(100, 100, 100) ;
 
  u = 1;
  v = 1;

  textureMode(NORMAL);
  textureWrap(REPEAT);

  uOffset = 0;
  vOffset = 0;

  // Load the images which will be fed into the texture(s).
  txtr = loadImage("cat.jpg");
  
  
    
  lookAtX = mouseX;
  lookAtY = mouseY;
  lookAtZ = 0;
  upX = 0;
  upY = 1;
  upZ = 0;
} // end setup() 

void draw() {
  background(150,0,150);
  fill(r, g, b) ;
  lights();

  ambientLight(255, 30, 42, 0, 0, 0);
  pointLight(79, 66, 137, 0, 0, 0);
  
  
  xRotation = map(mouseY, -height * 0.5, height * 0.5, 0, TWO_PI);
  yRotation = map(mouseX, -width  * 0.5, width  * 0.5, 0, TWO_PI) ;

  // Translate, rotate and scale.
  pushMatrix();
  translate(x, y, z);
  rotateY(yRotation);
  rotateX(xRotation);
  scale(scale);

  beginShape();

  // Front
  texture(txtr);
  vertex(-1, -1, 1, uOffset, vOffset);
  vertex(1, -1, 1, uOffset + u, vOffset);
  vertex(1, 1, 1, uOffset + u, vOffset + v);
  vertex(-1, 1, 1, uOffset, vOffset + v);
  endShape(CLOSE);

  // Right
  beginShape();
  //texture(txtr);
  vertex(1, -1, 1, uOffset, vOffset);
  vertex(0, 0, -1, uOffset + u, vOffset);
  vertex(1, 1, 1, uOffset + u, vOffset + v);
  
  endShape(CLOSE);

  // Left
  beginShape();
 // texture(txtr);
  vertex(0, 0, -1, uOffset, vOffset);
  vertex(-1, -1, 1, uOffset + u, vOffset);
  vertex(-1, 1, 1, uOffset + u, vOffset + v);
  
  endShape(CLOSE);

  // Bottom
  beginShape();
  //texture(txtr);
  vertex(-1, 1, 1, uOffset, vOffset);
  vertex(1, 1, 1, uOffset + u, vOffset);
  vertex(0, 0, -1, uOffset + u, vOffset + v);
  
  endShape(CLOSE);

  // Top
  beginShape();
  //texture(txtr);
  vertex(-1, -1,1, uOffset, vOffset);
  vertex(0, 0, -1, uOffset + u, vOffset);
  vertex(1, -1, 1, uOffset + u, vOffset + v);
  
  endShape(CLOSE);  
  popMatrix();
  
  drawSphere() ;
  drawBox() ;
}

void drawSphere() {
  noStroke() ;

  sphereDetail(40) ;
  fill(249, 139, 0);
  pushMatrix();
  translate(spherePos.x/2 -40, spherePos.y, spherePos.z);
  rotateX(frameCount / 120.0);
  sphere(sphereRadius);
  popMatrix();
} // end drawSphere()

void drawBox() {
  noStroke() ;

  sphereDetail(7) ;
  fill(40,0,200);
  pushMatrix();
  translate(boxPos.x*1.5+40, boxPos.y, boxPos.z);
  rotateY(frameCount / 90.0);
  box(boxScale.x, boxScale.y, boxScale.z);
  popMatrix();
} // end drawBox()

void mousePressed() {
  if (mouseButton == RIGHT) {
    r = 40 ;
    g = 0 ;
    b = 200 ;
  } else {
    r = 249 ;
    g = 139 ;
    b = 0 ;
  }
}

void keyPressed() {
  camera(x, y, z, 
    lookAtX, lookAtY, lookAtZ, 
    upX, upY, upZ);
}