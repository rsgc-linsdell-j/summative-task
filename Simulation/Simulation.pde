Cell cell;
Parasite parasites[] = new Parasite[2];
Cyano cyanos[] = new Cyano[8];
Proteo proteos[] = new Proteo[15];

float cellSizeBase = 30;
float absorbC = 5;
float absorbP = 2;

int numOfC = 0;
int numOfP = 0;

void setup() {

  size(1280, 720);
  background(0, 204, 0);
  cell = new Cell();
  // loops to instantiate multiple instances of the three bacterium
  for (int i = 0; i<parasites.length; i++)
    parasites[i] = new Parasite();
  for (int i = 0; i<cyanos.length; i++)
    cyanos[i] = new Cyano();
  for (int i = 0; i<proteos.length; i++)
    proteos[i] = new Proteo();
}

void draw() {
  background(0, 204, 0);
  cell.update();
  // loops to update all of the bacterium
  for (int i = 0; i<parasites.length; i++)
    parasites[i].update(cell);
  for (int i = 0; i<cyanos.length; i++)
    cyanos[i].update(cell);
  for (int i = 0; i<proteos.length; i++)
    proteos[i].update();
  fill(0);
  textSize(20);
  text("GOT "+numOfC+" CYANO", width-150, 100);
  text("GOT "+numOfP+" PROTEO", width-150, 200);
  if (numOfC+numOfP == cyanos.length + proteos.length) {
    win();
  }
}

void win() {
}