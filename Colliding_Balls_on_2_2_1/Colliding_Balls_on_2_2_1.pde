PVector loc;
PVector vel;
PVector acc;
PVector mouse;
int sz=50;

void setup() {
  size (800, 600);
  loc = new PVector (width/2, height/2);
  vel = PVector.random2D();
  acc = new PVector (0, 0);
  mouse = new PVector ();
  noCursor ();
}

void draw () {
  mouse.set(mouseX, mouseY);
  background (0);
  
  vel. add (acc);
  loc. add (vel);

  if (loc.dist(mouse) < sz/2) {
   fill (180, 171, 255); 
   vel.mult(-1);
  }
  else{
   fill (105, 212, 255); 
  }
 
  ellipse (loc.x, loc.y, sz, sz);
  
  if (loc.x +sz/2 > width || loc.x -sz/2 < 0) {
   vel.x *= -1; 
  }
  if ( loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    vel.y *= -1; 
  }

  ellipse (mouse.x, mouse.y, 5, 5);  
}
