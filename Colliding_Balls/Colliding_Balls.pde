PVector loc;
PVector vel;
PVector acc;
int sz=50;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size (800, 600);
  loc = new PVector (width/2, height/2);
  vel = new PVector (1, 5);
  acc = new PVector (.001, -.1);
}

void draw () {
  vel. add (acc);
  loc. add (vel);

