// create class
class Particle {
  // declare variables
 PVector loc, acc, vel;
 float sz;
 float life;
 float lifespan;
 float decay;
 float opacity;
 
 // create constructor for Particle to make one firework
   Particle(float x, float y) {
     loc = new PVector(x,y);
     acc = new PVector(0, .1);
     vel = new PVector(random(-2,2), -3);
     sz = 5;
     life = 150;
     lifespan = life;
     decay =1.5;
     opacity = map(life, 0, lifespan, 25, 45);  
   }
 
  void display() {
   fill(255,life);
   ellipse(loc.x, loc.y, sz, sz);
  } 
  
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  
  void update() {
    life -= decay;
    opacity = map(life, 0, lifespan, 25, 45);  
  }
}
