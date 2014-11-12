int x=0;
int y=0;
int pointx=0;
int pointy=0;
int changey=-1;
int step=1;
int barWidth=20;

void setup() {
size (800,500);
background(190,45,250);
}

void draw() {
  
  for (int x=0; x<=width; x+=barWidth){
     rect(x,0,barWidth,height);  
    if(mouseX>x&&mouseX<x+barWidth){
     fill(138,212,236);
    } 
    else{
     fill(122,238,237);
    }
    }

  
}

