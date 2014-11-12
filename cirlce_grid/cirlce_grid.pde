

void setup() {
  size(800,600);
  noCursor();
  background(153,74,235);
}

void draw() {
  for (int x=0; x<width; x+=20)
    for(int y=0; y<height; y+=25)
      ellipse (x,y,15,15);
  
}
