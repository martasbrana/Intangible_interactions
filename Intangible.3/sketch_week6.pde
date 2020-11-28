import ddf.minim.*;
Minim minim;

AudioPlayer song1;

String text = "je reviendai dans ton alcove et vers toi glisserai bruite avec les ombres dans la nuit";
int i =0;

void setup ()
{
    size(600, 200, P3D); 
    
    minim = new Minim(this);
    song1= minim.loadFile("lune.mp3");
}
  
  
void draw(){ 
  
String [] textSplit = split(text, " ");   

  println(textSplit.length); //print in the console window the total number of components in the string array 'textSplit'
  println(textSplit[i]);
  
  if (textSplit[i].equals("nuit")) { 
    song1.play();
  } else {
    song1.pause();
  }
  
  delay(1000);  
   
    }
