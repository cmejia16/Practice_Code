PImage fireworksBG;
ArrayList<Particle> allMyParticles = new ArrayList <Particle>(200);

void setup() {
 noStroke();
 size(800,600);
 colorMode(HSB, 360, 100, 100, 100);

}

void draw() {
  background (0);
  //load the image
  imageMode(CENTER);
  fireworksBG = loadImage ("fireworksBG.png");
  //for loop to make the class particle appear and the firework explode
  for (int i=0; i < allMyParticles.size(); i++){
   Particle c = allMyParticles.get(i);
   c.display();
   c.move();
   c.update(); 
  }
  
  // if statement to make the firework explode when the mouse is pressed at a specified location
  if (mousePressed){
   allMyParticles.add(new Particle()); 
  }
}

