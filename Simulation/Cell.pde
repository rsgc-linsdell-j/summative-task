class Cell{
  
  RVector location;
  RVector velocity;
  RVector acceleration;
  float size = 30;
  float radius = size/2;
  
  

  Cell(){
    
    location = new RVector(width/2, height/2 ); // center of canvas when instantiated
    velocity = new RVector(0, 0);  // object at rest when instantiated
  }
  


void update(){
  RVector mouse = new RVector(mouseX, mouseY);
  RVector direction = RVector.sub(mouse, location);
  direction.normalize();
  direction.mult(0.1);
  acceleration = direction;
  velocity.add(acceleration);
  velocity.limit(1.5);
  location.add(velocity);
  
  stroke(0);
  fill(153);
  ellipse(location.x,location.y,size,size);

}

public RVector getLocation(){
  return location;
}

public float getRadius(){
  return radius;
}

}