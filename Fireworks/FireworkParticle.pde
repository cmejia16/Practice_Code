class FireworkParticle (float x, float y){
 PVector loc, acc, vel;
 float sz;
 
   FireworkParticle(){
    loc = new PVector (x, y);
    acc = new PVector (random (-3,3), random (-5,0));
    vel = new PVector (0,.1;
    sz = 3; 
   }
   
  void display(){
   loc.add(vel);
   vel.add(acc); 
  }
  
  void move(){
   
  }
}
