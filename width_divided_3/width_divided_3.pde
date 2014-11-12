int x=0;
int y=0;

void setup(){
  size(600,600);
  background(100,0,100);
  noStroke();
}

void draw(){
  if(mouseX<=width/3){
    fill(169,104,255);
   ellipse(mouseX,mouseY,20,20); 
  }
  if(mouseX>=width/3){
    fill(169,61,255);
   ellipse(mouseX,mouseY,20,20); 
  } 
  if(mouseX==height/3){
   fill(125,45,189);
  ellipse(mouseX, mouseY, 20,20); 
  }
}
