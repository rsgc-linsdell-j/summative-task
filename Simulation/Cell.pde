class Cell {

  RVector location;
  RVector velocity;
  RVector acceleration;
  float size = cellSizeBase;
  float radius = size/2;



  Cell() {

    location = new RVector(width/2, height/2 ); // center of canvas when instantiated
    velocity = new RVector(0, 0);  // object at rest when instantiated
  }



  void update() {
    size = cellSizeBase + (numOfC*absorbC)+(numOfP*absorbP);
    radius = size/2;
    RVector mouse = new RVector(mouseX, mouseY);
    RVector direction = RVector.sub(mouse, location);
    direction.normalize();
    direction.mult(0.1);
    acceleration = direction;
    velocity.add(acceleration);
    velocity.limit(size/cellSizeBase);
    location.add(velocity);

    stroke(0);
    fill(153);
    ellipse(location.x, location.y, size, size);
  }

  public RVector getLocation() {
    return location;
  }

  public float getRadius() {
    return radius;
  }
}