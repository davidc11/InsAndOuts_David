import processing.serial.*; 

Serial myPort; 
int sensorValue=0; 


PFont font;

void setup(){
  size(1080, 900);
  
  font = createFont("SourceCodePro-Regular.ttf", 40);
  textFont(font);
  
  printArray(Serial.list()); 
  String portName = Serial.list()[0]; 
  myPort = new Serial(this, portName, 9600);
}

void draw(){ 
  if ( myPort.available() > 0) { 
    sensorValue = myPort.read(); 
  }
  
  if(sensorValue< 10){
    AngryMode();
  }
  else if(sensorValue>10.1 && sensorValue< 20){
    CautionMode();
  }
  else{
    CalmMode();
  }
}

void CalmMode(){
  background(#00FF00);
  textAlign(CENTER);
  fill(0);
  text("Come be my friend\nJust don't touch my head\n:)",200,350,700,300);
}

void CautionMode(){
  background(#FFFF00);
  textAlign(CENTER);
  fill(0);
  text("Careful there friend.\nYou're getting too close\nto my head.\n }:(    ",200,300,700,300);
}

void AngryMode(){
  background(#FF0000);
  textAlign(CENTER);
  fill(0);
  text("!!GET AWAY FROM MY HEAD FOOL!!\n >:( >:(",100,400,900,500);
}
