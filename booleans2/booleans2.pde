boolean angela=true;

void setup(){
 size(800,600); 
}

void draw(){
  if(angela==true){
    fill(random(255),random(255),random(255));
        ellipse(random (width) , random (height), random (50), random(50)); 

  }
  else{
    fill(random(255), random(255), random (255)); 
    rect(random (width),random (height), random(50), random (50));
  }
}
 void mousePressed(){
   angela=!angela;
 }

