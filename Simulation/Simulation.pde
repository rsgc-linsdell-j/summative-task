// initialize all cell objects
Cell cell;
Parasite parasites[] = new Parasite[2];
Cyano cyanos[] = new Cyano[8];
Proteo proteos[] = new Proteo[15];

float cellSizeBase = 30; // sets the base size of tha main cell
float absorbC = 5; // sets the amount to increase cell radius when cyano is absorbed
float absorbP = 2; // sets the amount to increase cell radius when proteo is absorbed

int numOfC = 0; // counter for number of cyanos absorbed
int numOfP = 0; // counter for number of proteos absorbed

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
    proteos[i].update(cell);
  // displays count of all bacterium absorbed
  fill(0);
  textSize(20);
  text("GOT "+numOfC+" CYANO", width-150, 100);
  text("GOT "+numOfP+" PROTEO", width-150, 200);
  // if all of the safe bacterium are absorbed, run the win function
  if (numOfC+numOfP == cyanos.length + proteos.length) 
    win();
}
// once all of the safe bacteria have been absorbed the cell transforms into a eukaryote, and the game is over
void win() {
  clear();
  background(51);
  textSize(32);
  fill(255, 0, 0);
  text("YOU WIN! YOU HAVE ENGULFED ENOUGH CYANOBACTERIA \n AND PROETOBACTERIA TO FORM ORGANELLES AND \n BECOME A EUKARYOTIC CELL!", 100, height/2);
  noLoop();
}