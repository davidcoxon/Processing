/*
this is a file called exhibitions
created on 15th sept 2011
by @Davidcoxon

*/

//establish exhibitions string, set count to 0

String[] exhibitions;

//set count to 0
int count=0;

//set positions for first exhibitions
int  exhibitionsx = 10;
int  exhibitionsy=30;
    
//set up the project
void setup(){
  size (900,800);
  background(0);
  smooth();
  
//get exhibitions data from csv file  
  
  exhibitions = loadStrings("exhibitions.csv");
 }
 
 
void draw () {
      fill (255,150);
      textSize (10);
//      rect(0,0,width,height);
      text (exhibitions[count],exhibitionsx,exhibitionsy);
      
exhibitionsy=exhibitionsy+15;
        count ++;
// if (exhibitionsy > 750) exhibitionsy  = 30;
if (count > 50) exhibitionsy  = 30;  
if (count > 50) count = 0;      
}
  
  void nextExhibition() {
  fill(255,150);
  textSize (18);
 text (exhibitions[count],10,50);
 
  count ++;
// if (count == exhibitions.length) count = 0;
}

