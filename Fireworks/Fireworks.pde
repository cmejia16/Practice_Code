ArrayList<Particle> allMyParticles = new ArrayList <Particle>(200);

void setup() {
 noStroke();
 size(800,600);
}

void draw() {
  for (int i; i < allMyParticles.size(); i++){
   Particle = allMyParticles.get(i);
   allMyParticles.display();
   allMyParticles.move();
   allMyParticles.update(); 
  }
  
  if (mousePressed){
    allMyParticles.add(new Particle()); 
  }
}

class Particle {
 PVector loc, acc, vel;
 float sz;
 float life;
   Particle() {
     loc = new PVector(width/2, height *.2);
     acc = new PVector(random(-3,3), random(-4,-2));
     vel = new PVector(0, .08);
     sz = 5;
     life = 250;
     lifespan = life;
     decay =1;
     opacity = map(life, 0, lifespan, 250);
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
    opacity = map(life, 0, lifespan, 250);  
  }
} 
