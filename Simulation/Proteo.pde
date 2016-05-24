class Proteo {

  RVector location;
  RVector velocity;
  RVector acceleration;
  RVector point;
  float size = 20;
  float radius = size/2;
  
  boolean isActive = true;

  RVector cellLocation;
  Cell cell;

  Proteo() {

    location = new RVector(random(width), random(height));
    velocity = new RVector(0, 0);
  }

  void update(Cell cell) {
    this.cell = cell;
    this.cellLocation = cell.getLocation();
    if(!collision()){
      if(isActive){
    point = new RVector(random(width), random(height));
    RVector direction = RVector.sub(point, location);
    direction.normalize();
    direction.mult(0.1);
    acceleration = direction;
    velocity.add(acceleration);
    velocity.limit(3);
    location.add(velocity);

    stroke(0);
    fill(240, 178, 5);
    ellipse(location.x, location.y, size, size);
    }
    }else if(isActive) {
      isActive = false;
      if(!isActive)
        absorbP();
    }
  }
  
  void absorbP() {
      numOfP+=1;
  }
  
  boolean collision() {
    RVector pCirc, cCirc;
    for (int i = 0; i < 360; i += 10) {
      float xP = location.x + cos(radians(i))*radius; 
      float yP = location.y + sin(radians(i))*radius; 
      pCirc = new RVector(xP, yP);
      // collision check
      for (int j = 0; j < 360; j += 10) {
        float xC = cellLocation.x + cos(radians(j))*cell.getRadius();
        float yC = cellLocation.y + sin(radians(j))*cell.getRadius();
        cCirc = new RVector(xC, yC);
        if ((int)pCirc.x == (int)cCirc.x && (int)pCirc.y == (int)cCirc.y) {
          // if there is a collision return true
          return true;
        }
      }
    }
    // if there is no collision return false
    return false;
  }
}