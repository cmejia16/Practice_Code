int x=0;
int y=0;

void setup() {
  size (800, 600);
  noStroke();
}

void draw() {

  for (x=0; x<width; x+=30) {
    for (y=0; y< height; y+=30) {
      fill(255);

      if (mouseX>x&&mouseX<x+30&&mouseY>y&&mouseY<y+30) {
        frameRate(40);
        fill(random(255), random(255), random(255));
      }
      else {
        fill (95, 236, 237);
      }
      rect(x, y, 30, 30);
    }
  }
}

