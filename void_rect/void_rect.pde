void setup() {
 size (800,600); 
}

void draw() {
 background (0);
 rectANGLE(40,50);
}

void rectANGLE( int x, int y){
 fill (0, 100, 100);
 rect (mouseX, mouseY, x, y);
}
