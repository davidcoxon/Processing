import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class exhibitions extends PApplet {

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
int  exhibitionsx = 10;
int  exhibitionsy=30;

//set positions for first graph line
int  numbersx = 250;
//int numbersx4 = 700;
//int numbersx3 =320000;
int  numbersy = 26;
    
//set up the project
public void setup(){
  size (900,800);
  background(0);
  smooth();
  
//get exhibition titles data from csv file  
  
  exhibitions = loadStrings("exhibitions.csv");
  numbers = loadStrings("numbers.csv");
  
//get visitor numbers data from csv file  
  
} 
 
public void draw () {
//      set random colur values
float randomRed = random(255);
float randomBlue = random(255);
float randomGreen = random(255);
int numbers5=900;
int[] numbers_int = new int[numbers.length];
for(int i = 0; i < numbers.length; i++) 

//      establish line length values
  numbers_int[i] = PApplet.parseInt(numbers[i]);

int numbersx3 = numbers_int[count];
//if (numbersx3 < 1) numbersx3  = 1;
int numbersx4 = numbers5*numbersx3/320000;
  
//      write exhibition names
      fill (randomRed,randomBlue,randomGreen,255);
      textSize (10);
      text (exhibitions[count],exhibitionsx,exhibitionsy);
text (numbersx3,200,exhibitionsy);      
      exhibitionsy=exhibitionsy+15;      
//      draw simple bars
      fill (randomRed,randomBlue,randomGreen,255);
      stroke (randomRed,randomBlue,randomGreen,255);
      line (numbersx,numbersy,numbersx4,numbersy);      
      numbersy=numbersy+15;

        count ++;
// if (exhibitionsy > 750) exhibitionsy  = 30;
if (count > 49) exhibitionsy  = 30; 
if (count > 49) numbersy  = 26;
if (count > 49) count = 0;      
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "exhibitions" });
  }
}
