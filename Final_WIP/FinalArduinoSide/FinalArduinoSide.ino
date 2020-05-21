//Declaring the Light Sensor
int sensorPin = A0;
int sensorValue = 0;

const int LED1 = 5; 
const int LED2 = 6; 

const int Speakers = 7; 

void setup() {
  //Allows for numbers to be read in inspector
  Serial.begin(9600);
  
  //LED Eyes
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  //Speakers
  pinMode(Speakers, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  sensorValue = analogRead(sensorPin);
  sensorValue = sensorValue / 4; //divide val by 4 or remap values to get byte-sized 0-255
  //delay(100); // Wait 100 milliseconds
  //Serial.println(sensorValue);
  if (Serial.available()) { 
    sensorValue = Serial.read(); 
  }

  if (sensorValue < 50) {

    digitalWrite(LED1, HIGH);

    digitalWrite(LED2, HIGH); 

    //tone(Speakers, 2000);
   // noTone(10);    
  }

  else if (sensorValue > 51 && sensorValue < 100) {

    digitalWrite(LED1, LOW);

    digitalWrite(LED2, LOW); 

    //tone(Speakers, 2000);
    delay(0);    
  }

  else if (sensorValue > 101) {

    digitalWrite(LED1, LOW);

    digitalWrite(LED2, LOW); 

    //tone(Speakers, 2000);
    delay(0);    
  }
  Serial.write(sensorValue);  //to send binary data to Processing
}
