import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class THOMAS extends PApplet {
  public void setup() {
size(300,300);
//head
fill(149,71,200);
ellipse(40,20,20,20);
//body
fill(149,71,200);
ellipse(40,45,20,30);
//arms
line(20,40,30,40);
line(50,40,60,40);
//hands
fill(149,71,200);
ellipse(20,40,5,5);
fill(149,71,200);
ellipse(60,40,5,5);
//legs
line(35,57,35,70);
line(45,57,45,70);
//feet
fill(149,71,200);
ellipse(35,70,4,4);
fill(149,71,200);
ellipse(45,70,4,4);
//eyes
fill(200,15,200);
ellipse(35,15,4,4);
fill(200,15,200);
ellipse(45,15,4,4);
//mouth
fill(255,20,20);
arc(40,25,1,5,0,PI);
//pants
fill(100,40,215);
line(30,45,50,45);
//buttons
fill(200,200,200);
ellipse(35,48,2,2);
fill(200,200,200);
ellipse(45,48,2,2);
  noLoop();
} 
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#F0F0F0", "THOMAS" });
  }
}
