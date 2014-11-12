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
    
  for (x=0; x<=width; x+=10){
   line(x,0,x,pointy);
   
  }
  
  pointy=pointy+2;
  
  if (pointy>=height){
   changey=-1; 
  }
   if (pointy<=height){
    changey=-1; 
   }
  
 for (x=0; x<=width; x+=20) {
  ellipse (x,y,20,20);
 ellipse (x+10,y+10,20,20);
 x=x+30;
 y=y+30;
 }
}

