float [] x = new float[5];
float [] y = new float[5];

void setup() {
  size (800,600);
  
 for (int i=0; i<5; i++) {
  x[i] = random(width);
  y[i] = random(height);
 }
}

void draw () {
  background (0);
   x[0] = x[1];
   y[0] = y[1];
   
   x[1] = x[2];
   y[1] = y[2];

   x[2] = x[3];
   y[2] = y[3];

   x[3] = x[4];
   y[3] = y[4];

   x[4] = mouseX;
   y[4] = mouseY;
   
 for (int i=0; i<5; i++) {
  ellipse (x[i], y[i], i*40+40, i*40+40); 
 }
}

  void mousePressed () {
   redraw();
  } 
