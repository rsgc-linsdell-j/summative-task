class Cell{
  
  RVector location;
  RVector velocity;
  float size = 30;
  
  RVector mouse = new RVector(mouseX, mouseY);

  Cell(){
    
    location = new RVector(width/2, height/2 ); // center of canvas when instantiated
    velocity = new RVector(0, 0);  // object at rest when instantiated
  }
  


void create(){
  stroke(0);
  fill(153);
  ellipse(location.x,location.y,size,size);

}

}