ArrayList<Particle> allMyParticles = new ArrayList <Particle>(200);

void setup() {
 noStroke();
 size(800,600);
 colorMode(HSB, 360, 100, 100, 100);

}

void draw() {
  background (0);
  for (int i=0; i < allMyParticles.size(); i++){
   Particle c = allMyParticles.get(i);
   c.display();
   c.move();
   c.update(); 
  }
  
//  if (mousePressed){
   allMyParticles.add(new Particle()); 
//  }
}

