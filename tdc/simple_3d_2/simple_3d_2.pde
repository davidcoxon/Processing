import processing.opengl.*;
PImage img;

void setup () {
  size (800,800,OPENGL);
  background(0);
  smooth();
  
  img=loadImage("smoke.jpg");
}

void draw () {
  background (0);
  lights();
  rectMode (CENTER);
  translate (width/2,height/2);
  pushMatrix();
  rotateX (map(mouseY,0,width,0,PI/2) );
  rotateY (map(mouseX/2,0,width,0,PI) );
  image (img, -img.width/2,-img.height/2);
  popMatrix();
  pushMatrix();
  translate (100,100,100);
  rotateX (map(mouseY,0,width,0,PI/2) );
  rotateY (map(mouseX/2,0,width,0,PI) );
  box(100,100,100);
  popMatrix();
}
