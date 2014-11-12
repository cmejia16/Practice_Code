///*  Quadratic Formula
// x = (-b + sqrt (b^2 - 4ac))/ 2a
// x = (-b - sqrt (b^2 - 4ac))/ 2a
// */
//
//void setup() {
//  println (quadAnswer);
//}
//
//void draw() {
//}
//
//float quadAnswer (float quadform1, float quadform2) {
//  println ("your answer is" + quadform1 + "and" + quadform2);
//}
//
//float quadform1 (float a, float b, float c) {
//  float result = (-b + sqrt (b*b - 4*a*c))/ 2*a ;
//  return result;
//}
//
//float quadform2 (float a, float b, float c) {
//  float result = (-b - sqrt (b*b - 4*a*c))/ 2*a;
//  return result;
//}
//
//
void setup() {
 println (quadratic (1,8,5)); 
}

void draw () {
  
}

float[] quadratic (float a, float b, float c) {
 float[] result = new float[5];
 result [0] = a;
 result [1] = b;
 result [2] = c;
 result [3] = (-b + sqrt (b*b - 4*a*c))/ 2*a;
 result [4] = (-b - sqrt (b*b - 4*a*c))/ 2*a;
 return result;
}
