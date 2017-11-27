class Shape {
  
  int r, g, b, o, x, y, wh ;
  
  // the constructor
  Shape(int pointX, int pointY, int wight, int opacity) {// wight stands for width and height
    r = 0 ;
    g = 0 ;
    b = 0 ;
    o = opacity ;
    x = pointX ;
    y = pointY ;
    wh = wight ;
    
    fill(r, g, b, o) ;
    rect(x, x, wh, wh) ;
  }
  
  // this function changes the color of each shape based on the randomness from the main file
  // I really like how this creates color pallets.
  // some of them were really cool and I wish I could have saved them
  void changeColor( int red, int green, int blue){
    r = red ;
    g = green ;
    b = blue ;
    fill(r, g, b, o) ;
    rect(x, y, wh, wh) ;
  }
}