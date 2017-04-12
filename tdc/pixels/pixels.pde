PImage img;
  float brushSize = 0;
  float targetBrushSize = 0;
  
void setup () {
  size (800,800);
  background (0);
  smooth();
  
  img = loadImage("smoke.jpg");
}
void draw (){
  //image (img,0,0);
  
 
  fill(0,1);
  if (frameCount % 5==0) rect(0,0,width,height);
  brushSize += (targetBrushSize - brushSize) * 0.05;
  
   if (mousePressed){targetBrushSize = 50;
   } else {
     targetBrushSize=1;
   }
  
  color c = img.get(mouseX,mouseY);
  fill (c);
  noStroke();
   
 
  ellipse (mouseX,mouseY,brushSize,brushSize);
}
