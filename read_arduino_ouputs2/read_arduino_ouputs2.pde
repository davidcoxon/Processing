//Here's my code:

//The error I get is: ArrayIndexOutOfBoundsException:3

//My Arduino is on COM3

// Notes/comments were to myself.  Not meant to be insulting. I am just learning.


//Uncomment, (remove the forward slashes) cut and Paste this first section into Arduino:
//void setup ()
//{
//  //initialize serial communication at 9600 baud rate
//  Serial.begin(9600);
//}
//
//void loop()
//{
//  //send "Hello World!" over the serial port
//  Serial.println ("Hello World");
// wait 100 milliseconds so we don't drive ourselves crazy
//  delay (100);
//}
//********************************************************************************************

//Cut and Paste from here down into Processing

import processing.serial.*;

Serial myPort;  // Create object from Serial class
String val;     // Data received from the serial port
String colour; 

void setup() 
{
 String portName = "/dev/tty.usbmodemfd111"; //change the 0 to a 1 or 2 etc. to match your port
 myPort = new Serial(this, portName, 9600);
}
   void Draw()
    {
      if ( myPort.available() > 0) 
      {  // If data is available,
      val = myPort.readStringUntil('\n');         // read it and store it in val 
        int colour = int(val);  
    background(colour);
  
} 
    println(val); //print it out in the console
    }