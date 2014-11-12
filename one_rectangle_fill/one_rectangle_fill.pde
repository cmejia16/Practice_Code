int x=0;
int y=0;
int pointx=0;
int pointy=0;
int changey=-1;
int step=1;

void setup() {
size (800,500);
background(190,45,250);
}

void draw() {
  if (mouseX>=width/3) {
      fill(255,0,255);
  }  
  
  for (x=0; x<=width; x+=30){
   rect(x,0,x,height);
   x++;
  }
  
  pointy=pointy+2;
  
  if (pointy>=height){
   changey=-1; 
  }
   if (pointy<=height){
    changey=-1; 
   }
  
}

