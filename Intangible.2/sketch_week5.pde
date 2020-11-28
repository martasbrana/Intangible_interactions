PImage one;
PImage two;
PImage three;

import ddf.minim.*;
Minim minim;

AudioPlayer song1;
AudioPlayer song2;
AudioPlayer song3;


int dim = 100;
int x = 2;


void setup () {
   
    size(600, 650, P3D);   //<>//

     
     minim = new Minim(this);
     song1 = minim.loadFile("danse.mp3");
     song2 = minim.loadFile("lune.mp3");
     song3 = minim.loadFile("gazza.mp3"); 
     
     one = loadImage ("1.jpg");
     two = loadImage ("2.jpg");
     three = loadImage ("3.jpg");
}
  
  
void draw(){ 
  
  background ( 0, 0, 0);
  fill (255, 255, 255);
  stroke(255, 255, 255);
  

image(one, 200, 100);
image(two, 200, 250);
image(three, 200, 400);
 
 switch (x) { 
 case 0:
 song1.play();
 break;
 case 1:
 song1.rewind();
 break;
 case 2:
 song1.pause();
 break;
 }
 

if (mouseX > 0 && mouseX < 200 && mouseY> 0 && mouseY < 100 )
  {x = 0;}
  else {x = 2; }



  
 switch (x) { 
 case 0:
 song2.play();
 break;
 case 1:
 song2.rewind();
 break;
 case 2:
 song2.pause();
 break;
 }
 

if (mouseX > 202 && mouseX < 400 && mouseY> 0 && mouseY < 100 )
  {
  x = 0;}
  else {x = 2; }
  
  
  
  
 switch (x) { 
 case 0:
 song3.play();
 break;
 case 1:
 song3.rewind();
 break;
 case 2:
 song3.pause();
 break;
 }
 

if (mouseX > 402 && mouseX < 595 && mouseY> 0 && mouseY < 100 )
  { x = 0;}
  else {x = 2; }
  
 }

 //<>//
void mousePressed()
{ x = int (random(2));
 
}
