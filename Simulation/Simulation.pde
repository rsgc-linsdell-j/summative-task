Cell cell;
Parasite parasites[] = new Parasite[2];
Cyano cyanos[] = new Cyano[8];
Proteo proteos[] = new Proteo[15];

void setup(){

  size(1280, 720);
  background(0, 204, 0);
  cell = new Cell();
  for(int i = 0; i<parasites.length; i++)
    parasites[i] = new Parasite();
  for(int i = 0; i<cyanos.length; i++)
    cyanos[i] = new Cyano();
  for(int i = 0; i<proteos.length; i++)
    proteos[i] = new Proteo();
}

void draw(){
  background(0, 204, 0);
  cell.update();
  parasite.update(cell.getLocation());
  cyano.update();
  proteo.update();
}