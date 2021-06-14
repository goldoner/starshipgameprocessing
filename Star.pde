class Star {
  float x, y;
  int vy;
  
  Star() { //CONSTRUCTOR
    this.x = random(width);
    this.y = 0;
    this.vy = 8;
  }
  
  void drawStar() {
   y+=vy;
   point(x,y);
  }
}
