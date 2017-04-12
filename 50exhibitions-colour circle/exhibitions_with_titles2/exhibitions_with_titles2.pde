/*
this is a file called exhibitions
created on 15th sept 2011
by @Davidcoxon

*/

//establish exhibitions and numbers strings, set count to 0

String[] exhibitions;
String[] numbers;

//set count to 0
int count=0;

//set first angle
float anglex = 0;
    
//set up the project
void setup(){
size (800,800);
background(255);
smooth();
frameRate(15);
  
//get exhibition titles data from csv file    
exhibitions = loadStrings("exhibitions.csv");

//get visitor numbers data from csv file  
numbers = loadStrings("numbers.csv");  
} 
 
void draw () {

//establish an int from the string value for numbers
int[] numbers_int = new int[numbers.length];
for(int i = 0; i < numbers.length; i++) 

numbers_int[i] = int(numbers[i]);

//establish the chart length based on value 
int numbersx3 =numbers_int[count];
int numbersx4 = 160*numbersx3/320000;
int chartcolour =1*numbersx3*255/320000;
  
//      write exhibition names and exhibition numbers
fill (0,chartcolour,0,255);
stroke(0,0);
textSize (10);
pushMatrix();
translate(width/2, height/2);
rotate (anglex);
text (exhibitions[count],180,0);
fill (chartcolour,chartcolour,0,255);
text (numbersx3,350,0);     
popMatrix();
//      draw simple bars
stroke(0,0);
translate(width/2, height/2);
rotate (anglex);
fill (0,0,255,255); 
rect (00,00,numbersx4,4);
//      increment counts     
anglex=anglex+0.1245;

        count ++;
// if (exhibitionsy > 750) exhibitionsy  = 30;
if (count > 49) anglex  = 0;
if (count > 49) count = 0;      
}

