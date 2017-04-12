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

public class Rotated_Words extends PApplet {

/**
 * Words. 
 * 
 * The text() function is used for writing words to the screen. 
 */


int x = -180;
PFont fontA;
  
public void setup() 
{
  size(270, 370);
  background(255);

  // Load the font. Fonts must be placed within the data 
  // directory of your sketch. Use Tools > Create Font 
  // to create a distributable bitmap font. 
  // For vector fonts, use the createFont() function. 
  fontA = loadFont("AmericanTypewriter-Medium-32.vlw");

  // Set the font and its size (in units of pixels)
  textFont(fontA, 64);

  // Only draw once
  noLoop();
}

public void draw() {
  // Use fill() to change the value or color of the text
  rotate(-45);
  fill(0);
  text("ichi", x, 180);
  fill(51);
  text("ni", x, 230);
  fill(100);
  text("san", x, 280);
  fill(color (200,00,00));
  text("shi", x, 330);
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "Rotated_Words" });
  }
}
