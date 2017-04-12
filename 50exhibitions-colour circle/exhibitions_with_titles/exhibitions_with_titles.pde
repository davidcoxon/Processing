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

//establish colours
int randomRed = 0;
int randomblue = 0;
int randomgreen = 0;

//set positions for first exhibitions
int  exhibitionsx = 400;
int  exhibitionsy=400;
float anglex = 0;

//set positions for first graph line
int  numbersx = 400;
int  numbersy = 400;
    
//set up the project
void setup(){
size (800,800);
background(0);
smooth();
frameRate(15);
  
//get exhibition titles data from csv file    
exhibitions = loadStrings("exhibitions.csv");

//get visitor numbers data from csv file  
numbers = loadStrings("numbers.csv");  
} 
 
void draw () {
//set random colur values
float randomRed = random(255);
float randomBlue = random(255);
float randomGreen = random(255);


//establish an int from the string value for numbers
int[] numbers_int = new int[numbers.length];
for(int i = 0; i < numbers.length; i++) 

numbers_int[i] = int(numbers[i]);

//establish the chart length based on a length of 700, starting at 200 
int numbersx3 =numbers_int[count];
int numbersx4 = 250*numbersx3/320000;
  
//      write exhibition names and exhibition numbers
fill (randomRed,randomBlue,randomGreen,255);
textSize (10);
pushMatrix();
translate(width/2, height/2);
rotate (anglex);
text (exhibitions[count],260,0);
//text (numbersx3,200,exhibitionsy);     
popMatrix();
//      draw simple bars
translate(width/2, height/2);
rotate (anglex);
fill (randomRed,randomBlue,randomGreen,255); 
rect (00,00,numbersx4,2);  

//      increment counts   
     exhibitionsy=exhibitionsy+15;    
anglex=anglex+0.124;

        count ++;
// if (exhibitionsy > 750) exhibitionsy  = 30;
if (count > 49) exhibitionsy  = 30; 
if (count > 49) numbersy  = 26;
if (count > 49) anglex  = 0;
if (count > 49) count = 0;      
}
