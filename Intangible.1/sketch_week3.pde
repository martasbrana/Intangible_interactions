
void setup () { 
  size (650, 400);
  noCursor();
  noFill();
  frameRate(3);
}

void draw () {
 background ( 0, 0, 0);
  
 
 stroke(255);
  ellipse(250, 120, 50, 50);    // top circle r
  ellipse(250, 160, 50, 50); // second circle r
  ellipse(250, 200, 50, 50); // third circle r
  ellipse(250, 240, 50, 50); // bottom circle r

  ellipse(400, 120, 50, 50);    // top circle l
  ellipse(400, 160, 50, 50); // second circle l
  ellipse(400, 200, 50, 50); // third circle l
  ellipse(400, 240, 50, 50); // bottom circle l
 
  ellipse(290, 140, 50, 50); // Middle circle 
  ellipse(360, 140, 50, 50); // Middle circle 
  ellipse(325, 160, 50, 50); // Middle circle 
  
  //randomizing colour
  if (mouseX > width/3) {
    fill( random(255), random(255), random(255), random(255));
    } else { fill (0, 255, 255);
      }
}
