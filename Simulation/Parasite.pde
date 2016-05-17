class Parasite{
  
  RVector location;
  RVector velocity;
  RVector acceleration;
  float size = 40;
  float radius = size/2;
  
  RVector cellLocation;
  Cell cell;
  
  Parasite(){
    
    location = new RVector(random(width), random(height));
    velocity = new RVector(0,0);
  
  
  }
  
  void update(Cell cell){
  this.cell = cell;
  this.cellLocation = cell.getLocation();
  if(!checkCellCollision()){
  RVector direction = RVector.sub(cellLocation, location);
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
    while(true){
      background(0);
      textSize(32);
      text("YOU LOSE", width/2, height/2); 
    }
  }
  

}
  
  
  boolean checkCellCollision(){
    RVector pCirc, cCirc;
  for (int i = 0; i < 360; i += 10) {
      float xP = location.x + cos(radians(i))*radius; 
      float yP = location.y + sin(radians(i))*radius; 
      pCirc = new RVector(xP, yP);
      for (int j = 0; j < 360; j += 10) {
      float xC = cellLocation.x + cos(radians(j))*cell.getRadius();
      float yC = cellLocation.y + sin(radians(j))*cell.getRadius();
      cCirc = new RVector(xC, yC);
      if(pCirc.x == cCirc.x && pCirc.y == cCirc.y){
      return true;
      }
      
  }
  }
  return false;

}
}