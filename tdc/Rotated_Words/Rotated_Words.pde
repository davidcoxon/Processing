/**
 * Words. 
 * 
 * The text() function is used for writing words to the screen. 
 */


int x = -180;
PFont fontA;
  
void setup() 
{
  size(350, 450);
 
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

void draw() {
  // Use fill() to change the value or color of the text
  rotate(-45);
  fill(0);
  text("welcome", x, 180);
  fill(51);
  text("to", x, 230);
  fill(100);
  text("processing", x, 280);
  fill(color (200,00,00));
  text("@TDC11", x, 330);
}
