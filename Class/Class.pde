//declare and initialize the GravityBall
GravityBall[] balls = new GravityBall [100];
 
 void setup() {
  size(800, 600);
  //initialize the GravityBall
  for( int i=0; i< balls.length; i++) {
  balls[i] = new GravityBall();
  }
}

void draw() {
  background(0);
  for( int i=0; i< balls.length; i++) {
  balls[i].display();
  balls[i].move();
  balls[i].bounce();
  }
}




class GravityBall {
  ////list information about the gravity ball
  //location
  //acceleration
  //velocity
  //size

  //declare variables
  PVector loc, vel, acc;
  float sz;

 
  GravityBall() {
    loc = new PVector(width/2, 50);
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
    sz = 50;
  }
 

  void display() {
    //display the ball
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    //move the ball
    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {
    //bounce ball off of floor
    if (loc.y > height - sz/2) {
      loc.y = height - sz/2;
      vel.y = -abs(vel.y);
    }
  }
}
