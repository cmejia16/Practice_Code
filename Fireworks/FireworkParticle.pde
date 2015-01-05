class FireworkParticle {
  ArrayList<Particle> allMyParticles;

  FireworkParticle(float x, float y) {
    allMyParticles = new ArrayList<Particle>();
    for (int i = 0; i < 50; i++) {
      allMyParticles.add(new Particle(x, y));
    }
  }

  void run() {
    for (int i=0; i < allMyParticles.size (); i++) {
      Particle c = allMyParticles.get(i);
      c.display();
      c.move();
      c.update();
    }
  }
}

