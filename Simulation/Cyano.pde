class Cyano{
  
  RVector location;
  RVector velocity;
  RVector acceleration;
  RVector point;
  float size = 40;

  Cyano(){
    
    location = new RVector(random(width), random(height));
    velocity = new RVector(0,0);
  
  
  }
  
  void update(){
  point = new RVector(random(width), random(height));
  RVector direction = RVector.sub(point, location);
  direction.normalize();
  direction.mult(0.1);
  acceleration = direction;
  velocity.add(acceleration);
  velocity.limit(1);
  location.add(velocity);
  
  stroke(0);
  fill(5,240,217);
  ellipse(location.x,location.y,size,size);
  }
  
  
}