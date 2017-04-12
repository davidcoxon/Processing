/*
this is a file called ant
created on 23rd May at TDC
by @Davidcoxon

*/

RobotAnt gary;
RobotAnt anthony;

int totalAnts = 1000;
RobotAnt[] antList;

void setup(){
  size (500,500);
  background(255);
  smooth();
  

  
  antList = new RobotAnt[totalAnts];
  
  for(int i=0; i < totalAnts; i++) {
    RobotAnt newbie =new RobotAnt();
    newbie.x=width/2;
    newbie.y=height/2;
    newbie.antcolor = color(random(255),0,0);
    //put it info the array
    antList[i]=newbie;
  }
  
 gary = new RobotAnt();
  gary.x = width/2;
  gary.y = height/2;
  gary.antSize = 5;
  gary.antcolor = 255;
  
  anthony = new RobotAnt();
  anthony.x = width/2;
  anthony.y = height/2;
  
}

void draw () {
//  background (255);
  gary.crawl();
  anthony.crawl();
  //tell all the ants to crawl
  for (int i=0;i<totalAnts;i++) {
    antList[i].crawl();
  }
    
}

void resetAnts() {
  // background(255);
  for (int i=0; i<totalAnts; i++) { 
    antList [i].x=width/2;
    antList [i].y=height/2;
  }
}
void keyPressed() {
resetAnts();
}


