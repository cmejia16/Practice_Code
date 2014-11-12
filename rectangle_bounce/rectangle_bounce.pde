int x;
int y;
int speedx;
int speedy;

void setup() {
  size(500,500);
  background(random(255),0,random(255));
  x=0;
  y=0;
 speedx=1; 
}

void draw() {
  background(random(255),0,random(255));
  fill(mouseX,0,mouseY);
  rect(x,height/2,40,20);
  x=x+speedx;
  
 if (x>=width) {
 speedx=-1;
 } 
   y=y+speedy;

 if(y<=width) {
  speedy=-1; 
   
 }
  
}
