int x=0;
int y=0;
int count=0;

void setup() {
  size(800,500);
noCursor();
background(155, 0, 175);
noStroke();
}

void draw() {
 while (count < width ) {
    x=x+20;
      fill(151,7,255);
      ellipse (x,(height/2),15,15);
      count++;
ellipse(width/2, y+10,15,15);
    y=y+20;
      fill(115,244,255);
      ellipse (width/2, y, 15, 15);
      count++; 
ellipse(x+10,height/2,15,15);
 }
}
