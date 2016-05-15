Cell cell = new Cell();
Parasite parasite = new Parasite();
Cyano cyano = new Cyano();

void setup(){

  size(640, 360);
  background(0, 204, 0);

}

void draw(){
  background(0, 204, 0);
  cell.update();
  parasite.update(cell.getLocation());
  cyano.update();
}