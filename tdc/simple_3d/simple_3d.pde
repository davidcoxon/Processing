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
  rectMode (CENTER);
  translate (width/2,height/2);
  rotateX (PI/3);
  rect (width/2,height/2,300,300);
  image (img, -img.width/2,-img.height/2);
}
