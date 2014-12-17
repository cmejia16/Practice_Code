class Particle {
 PVector loc, acc, vel;
 float sz;
 float life;
 float lifespan;
 float decay;
 float opacity;
 
   Particle() {
     loc = new PVector(width/2, height *.2);
     acc = new PVector(0, .1);
     vel = new PVector(random(-3,3),-3);
     sz = 5;
     life = 250;
     lifespan = life;
     decay =1;
//     opacity = map(life, 0, lifespan, 250);
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
//    opacity = map(life, 0, lifespan, 250);  
  }
}
