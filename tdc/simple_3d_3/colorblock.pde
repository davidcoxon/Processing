class ColorBlock {
  
  PVector pos = new PVector (0,0,0);
  PVector tpos = new PVector (0,0,0);
  
  color col=255;
  float boxSize = 20;
  float boxHeight = 100;
    
  ColorBlock() {
    
  }
  
  void update(){
    
    col = img.get(floor(pos.x),floor( pos.y));
    boxHeight = saturation(col);
    
    pos.x += (tpos.x - pos.x) * 0.1;
    pos.y += (tpos.y - pos.y) * 0.1;
    pos.z += (tpos.z - pos.z) * 0.1;
    
    if(random(100) < 0.1) {
      pos.x = random (img.width);
      pos.y = random (img.height);
    }
   }
  
  void render(){
    pushMatrix();
      translate(pos.x,pos.y,pos.z);
      fill (col);
      noStroke();
      box(boxSize,boxSize,boxHeight);
    popMatrix();
  }
  
}
