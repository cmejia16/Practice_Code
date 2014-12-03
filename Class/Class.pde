//declare and initialize the GravityBall
GravityBall[] balls = new GravityBall [100];


void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  //initialize the GravityBall
  for( int i=0; i< balls.length; i++) {
  balls[i] = new GravityBall();
  balls[i] = new GravityBall(map(i, 0, balls.length, 0, width), 2*i+5);

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
  float hue, sat, bright, alpha;

//constructors
 
  GravityBall() {
    loc = new PVector(random(sz, width-sz), random(height/2));
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
    sz = 50;
    hue = random (360);
    sat = 100;
    bright = 100;
    alpha = 70;
  }
  
   GravityBall(float tempx, float tempsz) {
    sz = tempsz;
    loc = new PVector(tempx, sz);
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
    hue = random(360);
    sat = 100;
    bright = 100;
    alpha = 70;
}
  
 

  void display() {
    //display the ball
    fill(hue, sat, bright, alpha);
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
