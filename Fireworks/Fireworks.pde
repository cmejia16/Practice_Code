PImage fireworksBG;
ArrayList <FireworkParticle> allMyParticles = new ArrayList <FireworkParticle> ();
//ArrayList<Particle> allMyParticles = new ArrayList <Particle>(200);

void setup() {
  
 noStroke();
 fireworksBG = loadImage ("fireworksBG.jpg");
 size(fireworksBG.width, fireworksBG.height);
 colorMode(HSB, 360, 100, 100, 100);

}

void draw() {
  background (fireworksBG);
  
//  //for loop to make the class particle appear and the firework explode
   for ( int i=0; i< allMyParticles.size() ; i++){
     FireworkParticle f = allMyParticles.get (i);
     f.run();
   }

  
  // if statement to make the firework explode when the mouse is pressed at a specified location
  if (mousePressed){
   allMyParticles.add(new FireworkParticle(random (0, width), random(height *.2,height *.1))); 
  }
}

