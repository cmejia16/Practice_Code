boolean angela=true;

void setup(){
 size(800,600); 
}

void draw(){
  if(angela==true){
    fill(200,100,200);
        ellipse(mouseX, mouseY, 20, 20); 

  }
  else{
    fill(100,200,100); 
    rect(mouseX,mouseY,20,20);
  }
}
 void mousePressed(){
   angela=!angela;
 }

