class Cell{
  
  RVector location;
  RVector velocity;
  size = 20;

  Cell(){
    
    location = new RVector( width/2, height/2 ); // center of canvas when instantiated
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
  rect(location.x,location.y,radius,radius);

}

}