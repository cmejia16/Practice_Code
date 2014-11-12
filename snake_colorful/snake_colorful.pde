int count = 50;

float [] x = new float[count];
float [] y = new float[count];

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size (800, 600);
  for (int i=0; i< count; i++) {
    x[i] = random (width);
    y[i] = random (height);
  }
  noStroke();
}

void draw () {
 background (0);
 
 if (pmouseX !=mouseX || pmouseY !=mouseY) {
  fill (frameCount%360, 100, 200, 30);
 }
  for (int i=0; i < count-1; i++) {
    x[i] = x[i+1];
    y[i] = y[i+1];
  }

  x[count-1] = mouseX;
  y[count-1] = mouseY;

  for ( int i= count-1; i >= 0; i--) {
    ellipse (x[i], y[i], i+5, i+5);
  }
}

void mousePressed () {
  redraw();
} 

