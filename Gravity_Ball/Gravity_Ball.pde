float xloc;
float yloc;
int sz=50;
float velx;
float vely;
float accx;
float accy;

void setup(){
  size (800,600);
  xloc= width/2;
  yloc= height/2;
  velx= 0;
  vely= 1;
  accx= 0;
  accy= 1;
}

void draw() {
  background (0);

  velx += accx;
  vely += accy;
  xloc += velx;
  yloc += vely;
  
  ellipse (xloc, yloc, sz, sz);
  
  if (yloc + sz/2 > height) { 
   yloc= height - sz/2;
   vely= -abs (vely); 
  }
}
