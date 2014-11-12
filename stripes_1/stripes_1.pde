int x=0;
int step=1;

void setup() {
size (800,500);
background(190,45,250);
}

void draw() {
    
  if (x<=width){
   line(x,0,step,height);
    x+=100;
    step++;
  }
}

