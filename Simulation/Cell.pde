class Cell{
  
  RVector location;
  RVector velocity;

  Cell(){
    
    location = new RVector( width/2, height/2 ); // center of canvas when instantiated
    velocity = new RVector(0, 0);  // object at rest when instantiated
    
    
  }
  
  void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
    } else if (keyCode == RIGHT) {
    } else if (keyCode == UP) {
    } else if (keyCode == DOWN) {
    } 
  } else {
  }
}

}