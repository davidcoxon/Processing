class RobotAnt {
  
  float x=0;
  float y=0;
  
  float antSize =1;
float antcolor =0;

  RobotAnt () {
  
  }
  
  void crawl () {
    x=x+random(-1,1);
    y+= random (-1,1);
    noStroke();
    fill(0,1);
    ellipse (x,y,antSize,antSize);
  }
 
}

