float input_voltage = 0.0;
float temp=0.0;
float max_voltage = 5.0;
float timeout = 1;

void setup()
{
   Serial.begin(9600);     //  opens serial port, sets data rate to 9600 bps
}
void loop()
{
  //Conversion formula for voltage
   
  int analog_value = analogRead(A0);
  input_voltage = (analog_value * max_voltage) / 1024.0; 
  Serial.print("v= ");
  Serial.println(input_voltage);
  delay(timeout);
}
