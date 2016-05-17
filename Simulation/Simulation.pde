Cell cell;
Parasite parasite;
Cyano cyano;
Proteo proteo;

void setup(){

  size(1280, 720);
  background(0, 204, 0);
  cell = new Cell();
  parasite = new Parasite();
  cyano = new Cyano();
  proteo = new Proteo();
}

void draw(){
  background(0, 204, 0);
  cell.update();
  parasite.update(cell.getLocation());
  cyano.update();
  proteo.update();
}