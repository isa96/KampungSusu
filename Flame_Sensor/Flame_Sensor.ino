#define Flamepin (A0)

float sensorValue;  //variable to store sensor value

void setup()
{
  Serial.begin(9600); // sets the serial port to 9600

}

void loop()
{
  sensorValue = analogRead(Flamepin); // read analog input pin 0
  
  Serial.print("Sensor Value: ");
  Serial.print(sensorValue);
  
  if(sensorValue < 1024)
  {
    Serial.print(" | Flame detected!");
  }
  
  Serial.println("");
  delay(2000); // wait 2s for next reading
}
