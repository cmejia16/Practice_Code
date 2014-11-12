String[] faves= {"Unicorns", "Butterflies", "Pinto People", "Angela", "Rainbows", "Lavender", "Baking", "Water", "Belle"};

void setup(){
 size (800,600);
background(0); 
}

void draw(){
  for(int z=0; z < faves.length; z++){
   if(z!=3) {
     text (faves [z], 10, 20+50*z);
   }
  }
  
}
