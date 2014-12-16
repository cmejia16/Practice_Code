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

