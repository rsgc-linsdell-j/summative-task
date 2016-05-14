class Cell{
  
  RVector location;
  RVector velocity;
  float size = 20;

  Cell(){
    
    location = new RVector(100, 100 ); // center of canvas when instantiated
    velocity = new RVector(0, 0);  // object at rest when instantiated
  }
  
  void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      location.x -= 1;
    } else if (keyCode == RIGHT) {
      location.x += 1;
    } else if (keyCode == UP) {
      location.y -= 1;
    } else if (keyCode == DOWN) {
      location.x += 1;
    } 
  } else {
  }
}

void create(){
  keyPressed();
  stroke(0);
  fill(153);
  ellipse(100,100,25,25);

}

}