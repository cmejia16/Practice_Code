int x=40;
int y=20;


void setup(){
size(500,500);
noCursor();
background(155, 0, 175);
}
void draw(){
  background(155, 0, 175);
scale(2);

  x=mouseX;
  y=mouseY;
  
//head
fill(149,71,200);
ellipse(x,y,20,20);
//body
fill(149,71,200);
ellipse(x,y+25,20,30);
//arms
line(x-20,y+20,x-10,y+20);
line(x+10,y+20,x+20,y+20);
//hands
fill(149,71,200);
ellipse(x-20,y+20,5,5);
fill(149,71,200);
ellipse(x+20,y+20,5,5);
//legs
line(x-5,y+37,x-5,y+50);
line(x+5,y+37,x+5,y+50);
//feet
fill(149,71,200);
ellipse(x-5,y+50,4,4);
fill(149,71,200);
ellipse(x+5,y+50,4,4);
//eyes
fill(200,15,200);
ellipse(x-5,y-5,4,4);
fill(200,15,200);
ellipse(x+5,y-5,4,4);
//mouth
fill(255,20,20);
arc(x,y+5,1,5,0,PI);
//pants
fill(100,40,215);
line(x-10,y+25,x+10,y+25);
//buttons
fill(200,200,200);
ellipse(x-5,y+28,2,2);
fill(200,200,200);
ellipse(x+5,y+28,2,2);
}
