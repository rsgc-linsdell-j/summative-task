class Parasite{
  
  RVector location;
  RVector velocity;
  RVector acceleration;
  float size = 40;
  
  RVector cell;
  
  Parasite(){
    
    location = new RVector(random(width), random(height));
    velocity = new RVector(0,0);
  
  
  }
  
  void update(RVector cell){
  if(!checkCell()){
  this.cell = cell;
  RVector direction = RVector.sub(cell, location);
  direction.normalize();
  direction.mult(0.1);
  acceleration = direction;
  velocity.add(acceleration);
  velocity.limit(1);
  location.add(velocity);
  stroke(0);
  fill(255,0,0);
  ellipse(location.x,location.y,size,size);
  }
  else{
    while(1){
      background(0);
      textSize(32);
      text("YOU LOSE", width/2, height/2); 
    }
  }
  }
  }
  
  boolean checkCell(){
  
  
  }
  
}