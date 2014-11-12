int x=0;
int y=0;
int pointx=0;
int pointy=0;
int changey=-1;
int step=1;
int barWidth=20;

void setup() {
size (800,600);
}

void draw() {
    rect(400,300,barWidth,40);
    if(mouseX>x&&mouseX<x+barWidth&&y>height/3&&y<2*height/3){
     fill(138,212,236);
    } 
    else{
     fill(138,77,236);
    }
    
}

