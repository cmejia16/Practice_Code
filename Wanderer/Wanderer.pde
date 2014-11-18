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

  fill (frameCount%360, 100, 100, 100);
  noStroke ();
  ellipse (loc.x, loc.y, sz, sz);

  if (loc.x + sz/2 <0) {
    loc.x = width +sz/2;
  } 
  if ( loc.x -sz/2 > width) {
    loc.x = -sz/2;
  }
  if (loc.y +sz/2 < 0) {
    loc.y = height + sz/2;
  }
  if (loc.y -sz/2 > height) {
    loc.y = -sz/2;
  }
  acc.set (random (-1, 1), random (-1, 1), 0);
}

