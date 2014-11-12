//create five hundred bouncing balls
float []x = new float [500];
float []y = new float [500];
float []sz = new float [500];
float []speedX = new float [500];
float []speedY = new float [500];

void setup () {
  size (1000,800);
  noStroke();
  frameRate (10);
  for (int i=0; i<x.length; i++){
   x[i]= map (i, 0, x.length, 0, width);
   y[i]= random (sz[i], height-sz[i]);
   sz[i]= random (20,100);
   speedX[i]= random (-2,2);
   speedY[i]= random (-2,2);
}
}

void draw() {
 background (0);
 for (int i=0; i<x.length; i++){
  fill (random (255), random (255), random (255), 50);
  ellipse (x[i], y[i], sz[i], sz[i]);
  x[i]= x[i]+ speedX [i];
  y[i]= y[i]+ speedY [i];
 
   if (x[i] - sz[i]/2 <0 || x[i] + sz[i]/2 >width){
    speedX[i]*=-1;
  }
  if (y[i] - sz[i]/2 >height || y[i] + sz[i]/2 <0){
    speedY[i]*=-1;
  }
  } 
 

}
  
