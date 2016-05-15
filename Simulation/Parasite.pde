class Parasite{
  
  RVector location;
  RVector velocity;
  RVector acceleration;
  float size = 40;
  
  Parasite(){
    
    location = new RVector(random(width), random(height));
    velocity = new RVector(0,0);
  
  
  }
  
  void update(RVector cell){
  RVector direction = RVector.sub(cell, location);
  direction.normalize();
  direction.mult(0.1);
  acceleration = direction;
  velocity.add(acceleration);
  velocity.limit(1);
  location.add(velocity);
  
  stroke(0);
  fill(153);
  ellipse(location.x,location.y,size,size);
  }
  
}