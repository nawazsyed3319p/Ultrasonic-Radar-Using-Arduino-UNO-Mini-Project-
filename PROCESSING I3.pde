import processing.serial.*; // imports library for serial communication 
import java.awt.event.KeyEvent; // imports library for reading the data from 
the serial port 
import java.io.IOException; 
Serial myPort; // defines Object Serial 
// defubes variables  
String angle=""; 
String distance=""; 
String data=""; 
String noObject; 
float pixsDistance; 
int iAngle, iDistance; 
int index1=0; 
int index2=0; 
PFont orcFont; 
void setup() { 
size (1200, 700); // ***CHANGE THIS TO OUR SCREEN RESOLUTION 
*** 
smooth(); 
myPort = new Serial(this,"COM5", 9600); // starts the serial communication 
myPort.bufferUntil('.'); // reads the data from the serial port up to the char 
acter '.'. So actually it reads this: angle,distance. } 
void draw() { 
fill(98,245,31); 
// simulating motion blur and slow fade of the moving line 
noStroke(); 
fill(0,4); 
rect(0, 0, width, height-height*0.065); 
fill(98,245,31); // green color 
// calls the functions for drawing the radar 
drawRadar(); 
drawLine(); 
drawObject(); 
drawText(); 
}  
translate((width-width*0.5104)+width/2*cos(radians(150)),(height- 
height*0.0574)-width/2*sin(radians(150))); 
rotate(radians(-60)); 
text("150°",0,0); 
popMatrix(); 
} 
