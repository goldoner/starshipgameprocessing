class Ship {
  float x, y, vx, vy;
  boolean upPressed, downPressed, leftPressed, rightPressed;
  
  int speed = 6; //speed of ship
  
  Ship() {
    this.x = width/2;
    this.y = height - height/4;
    this.vy = 0;
    this.vx = 0;
  }
  
  void drawShip() {
    
 
    fill(20, 75, 200);
    stroke(20, 75, 200);
  
  
    if (upPressed == true) {
      vy= -speed;
    } else if (downPressed == true) {
      vy = speed;
    } else {
      y -= vy;
      vy = 0;
    }
    
    if (leftPressed == true) {
      vx= -speed;
    } else if (rightPressed == true) {
      vx= speed;
    } else {
      vx=0;
    }
    
    x += vx;
    
    if (y-20>=50 && y<height) {
      y += vy;
    }
    
    
    if (x+10 < 0)
      x = width+9;
    
    if (x-10 > width) x = -9;
    
   triangle(x, y - 25, x-10, y, x+10, y);
  
  }
}
