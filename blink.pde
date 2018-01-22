import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int ledPin = 12;
void setup(){
   arduino = new Arduino(this, Arduino.list()[1],57600);
   arduino.pinMode(ledPin, Arduino.OUTPUT);
}
void draw(){
  arduino.digitalWrite(ledPin, Arduino.HIGH);
  delay(500);
  arduino.digitalWrite(ledPin, Arduino.LOW);
  delay(1000);
}