const int buttonPin = 2; 
const int ledPin =  13;

int buttonState = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(ledPin, OUTPUT);
  pinMode(buttonPin, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  buttonState = digitalRead(buttonPin);
  if (buttonState == HIGH) {
    // turn LED on:
    digitalWrite(ledPin, HIGH);
    delay(100);

    digitalWrite(12, HIGH);
    delay(100);

    digitalWrite(11, HIGH);
    delay(100);

    digitalWrite(10, HIGH);
    delay(100);

    digitalWrite(ledPin, HIGH);
    delay(75);

    digitalWrite(12, HIGH);
    delay(75);

    digitalWrite(11, HIGH);
    delay(75);

    digitalWrite(10, LOW);
    delay(75);

    digitalWrite(ledPin, HIGH);
    delay(100);

    digitalWrite(12, HIGH);
    delay(100);

    digitalWrite(11, LOW);
    delay(100);

    digitalWrite(10, LOW);
    delay(100);

    digitalWrite(ledPin, HIGH);
    delay(50);

    digitalWrite(12, LOW);
    delay(50);

    digitalWrite(11, LOW);
    delay(50);

    digitalWrite(10, LOW);
    delay(50);

    digitalWrite(ledPin, LOW);
    delay(100);

    digitalWrite(12, LOW);
    delay(100);

    digitalWrite(11, LOW);
    delay(100);

    digitalWrite(10, LOW);
    delay(100);

    digitalWrite(ledPin, LOW);
    delay(75);

    digitalWrite(12, LOW);
    delay(75);

    digitalWrite(11, LOW);
    delay(75);

    digitalWrite(10, LOW);
    delay(75);

    digitalWrite(ledPin, HIGH);
    delay(50);

    digitalWrite(12, LOW);
    delay(50);

    digitalWrite(11, LOW);
    delay(50);

    digitalWrite(10, HIGH);
    delay(50);

    digitalWrite(ledPin, LOW);
    delay(100);

    digitalWrite(12, HIGH);
    delay(100);

    digitalWrite(11, HIGH);
    delay(100);

    digitalWrite(10, LOW);
    delay(100);

  } else {
    // turn LED off:
    digitalWrite(ledPin, LOW);
    delay(30);
    
    digitalWrite(12, LOW);
    delay(30);

    digitalWrite(11, LOW);
    delay(100);

    digitalWrite(10, LOW);
    delay(100);

  }


}
