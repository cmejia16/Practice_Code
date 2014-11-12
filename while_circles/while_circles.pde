int x=0;
int y=;
int count=0;

void setup(){
size(800,500);
noCursor();
background(155, 0, 175);
}

void draw(){

 while (count < width ) {
 x=x+19;
 ellipse (x,(height/2),10,10);
 count++;
 
 
 }
}
