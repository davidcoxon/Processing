
String[] exhibitions;
int count=0;

void setup () {
  size(500,500);
  background(0);
  smooth();

    exhibitions = loadStrings("exhibitions.csv");
}

void draw () {
    fill (0,2);
    rect(0,0,width,height);
    
   
}

void nextExhibition() {
  fill(255,150);
  textSize (18);
 text (exhibitions[count],10,50,width-20,500);  
 
 count ++;
 if (count == exhibitions.length) count = 0;
}
void mousePressed() {
  nextExhibition();
}  
