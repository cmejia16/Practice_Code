//create five bouncing balls
int []x = {100,174,500,365,123};
int []y = {70,65,123,645,222};
int []sz = {30,20,50,60,100};
int []speedX = {-1,-2,1,2,3};
int []speedY = {-1,-2,1,2,3};

void setup () {
  size (800,600);
}

void draw() {
 background (0);
 for (int i=0; i<5; i++){
  ellipse (x[i], y[i], sz[i], sz[i]);
  x[i]= x[i]+ speedX [i];
  y[i]= y[i]+ speedY [i];
 
   if (x[i] - sz[i]/2 <0 || x[i] + sz[i]/2 >width){
    speedX[i]*=-1;
  }
  if (y[i] - sz[i]/2 >height || y[i] + sz[i]/2 <0){
    speedY[i]*=-1;
  }
  } 
 

}
  
