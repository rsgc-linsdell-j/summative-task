class Parasite {

  RVector location;
  RVector velocity;
  RVector acceleration;
  float size = 40;
  float radius = size/2;

  RVector cellLocation;
  Cell cell;

  Parasite() {

    location = new RVector(random(width), random(height));
    velocity = new RVector(0, 0);
  }

  void update(Cell cell) {
    this.cell = cell;
    this.cellLocation = cell.getLocation();
    if (!collision()) {
      // if collision is false the parasite keeps moving
      // parasite always move in direction of the cell
      RVector direction = RVector.sub(cellLocation, location);
      direction.normalize();
      direction.mult(0.1);
      acceleration = direction;
      velocity.add(acceleration);
      velocity.limit(0.7);
      location.add(velocity);
      stroke(0);
      fill(255, 0, 0);
      ellipse(location.x, location.y, size, size);
    } else {
      // if the cell makes contact with a parasite collision is true and the game is over
      clear();
      background(51);
      textSize(32);
      fill(255, 0, 0);
      text("YOU LOSE! A PARASITIC BACERIUM ATTACKED YOU AND \n MANAGED TO DESTROY YOU. BETTER LUCK NEXT TIME!", 100, height/2);
      noLoop();
    }
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