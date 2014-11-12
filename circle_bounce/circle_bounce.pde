int x;
int y;
int z;
int w;
int speedx;
int speedy;
int speedz;
int speedw;

void setup() {
  size(500, 500);
  background(random(255), 0, random(255));
  x=250;
  y=0;
  z=100;
  w=10;
  speedx=10;
  speedy=10;
  speedz=10;
  speedw=10;
}

void draw() {
  background(155, 0, 255);
  fill(mouseX,0,mouseY);
  ellipse(x, y, 15, 15);
  ellipse(z,w, 15, 15);

//  x=x+1;
//  y=y+3;

  x=x+speedx;

  if (x>width) {
    speedx=-speedx;
  } 
  y=y+speedy;

  if (y>height) {
    speedy=-speedy;
  }
  if(x<0){
   speedx=-speedx; 
  }
  if(y<0){
    speedy=-speedy;
  }
  z=z+speedz;

  if (z>width) {
    speedz=-speedz;
  } 
  w=w+speedw;

  if (w>height) {
    speedw=-speedw;
  }
  if(z<0){
   speedz=-speedz; 
  }
  if(w<0){
    speedw=-speedw;
  }
}

