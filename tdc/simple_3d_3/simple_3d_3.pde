import processing.opengl.*;
PImage img;

int blockCount = 100;
ColorBlock[] blockList;

void setup () {
  size (800, 800, OPENGL);
  background(0);
  smooth();

  img=loadImage("smoke.jpg");

  //Create the list for the blocks
  blockList = new ColorBlock [blockCount];
  for (int i=0; i < blockCount; i++) {
    ColorBlock c = new ColorBlock();
    c.tpos.x = random (img.width);
    c.tpos.y = random (img.height);
    blockList[i] = c;
  }
}

void draw () {
  background (0);
  lights();
  rectMode (CENTER);
  translate (width/2, height/2);
  rotateX (map(mouseY, 0, width, 0, PI/2) );
  rotateY (map(mouseX/2, 0, width, 0, PI) );
  image (img, -img.width/2, -img.height/2);

  translate(-img.width/2, -img.height/2);
  for (int i = 0 ; i < blockCount; i++) {
    blockList[i].update();
    blockList[i].render();
  }
}

