// declare circles array
Circle[] circles;
 
float minX = MAX_FLOAT; // maximum possible float number
float maxX = MIN_FLOAT; // minimum possible float number
float minY = MAX_FLOAT;
float maxY = MIN_FLOAT;
 
int margin = 50;
 
void setup() {
  size(1024, 768);
  smooth();
  frameRate(30);
 
  // read text file
  String[] data = loadStrings("data.txt");
 
  // initialize circles array to match the number of lines in data.txt
  circles = new Circle[data.length];
 
  // initialize circle objects
  for (int i = 0; i < data.length; i++) {
     
    // convert string into array of floats
    float[] row = float(split(data[i], ','));
     
    // assign values from data file to variables
    float x = row[0];
    float y = row[1];
    float r = row[2];
    color c = (color) row[3];
     
    // get min/max values
    setMinMax(x, y);
     
    circles[i] = new Circle(x, y, r, c);
  }
}
 
void draw() {
  background(255);
   
  // display circles
  for (int i = 0; i < circles.length; i++) {
    circles[i].display();
  }
   
  // check for mouse over and display label
  for (int i = 0; i < circles.length; i++) {
    circles[i].onMouseOver(mouseX, mouseY);
  }
}
 
 
void setMinMax(float x, float y) {
  if (x > maxX) {
    maxX = x;
  }
  if (x < minX) {
    minX = x;
  }
  if (y > maxY) {
    maxY = y;
  }
  if (y < minY) {
    minY = y;
  }
}
 
float translateX(float x) {
  float newX = map(x, minX, maxX, 0+margin, width-margin);
  return newX;
}
 
float translateY(float y) {
  float newY = map(y, minY, maxY, 0+margin, height-margin);
  return newY;
}
