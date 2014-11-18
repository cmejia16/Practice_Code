float xloc;
float yloc;
int sz=50;
float velx;
float vely;
float accx;
float accy;

void setup(){
  colorMode(HSB, 360, 100, 100, 100);
  size (800,600);
  xloc= width/2;
  yloc= height/2;
  velx= 0;
  vely= 0;
  accx= .01;
  accy= .1;
}

void draw () {
 background (255);
  
 velx += accx;
 vely += accy;
 xloc += velx;
 yloc += vely;
 
 fill (frameCount%360, 100, 100, 100);
 ellipse (xloc, yloc, sz, sz);
 
 if (xloc + sz/2 <0) {
  xloc = width +sz/2;
 } 
 if ( xloc -sz/2 > width) {
  xloc = -sz/2; 
 }
 if (yloc +sz/2 < 0) {
  yloc = height + sz/2; 
 }
 if (yloc -sz/2 > height) {
   yloc = -sz/2;
 }
}
