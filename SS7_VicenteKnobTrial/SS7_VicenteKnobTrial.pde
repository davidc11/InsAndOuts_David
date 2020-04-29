import processing.serial.*; 

Serial myPort; 
int val=0; 

int [] MasterArray = new int[3];
int MasterArrayIndex = 0;

PImage InitialPic;

PImage [] VicentePic = new PImage[5];
int VicentePicIndex = 0;


PFont font;

String [] Quote = {"Tres de los mejores de mi Mexico Querido <3 \n Three of my beloved Mexico's best <3",
"Vicente 'Chente' Fernández Gómez\n Por siempre ''El Rey De Las Rancheras'\n Forever the ''King of rancheras'''"};
int QuoteIndex = 0;

String [] Title = {"Mexico's Greatest",
"Vicente ''Chente'' Fernández Gómez"};
int TitleIndex = 0;

String TitleArrayInstructions = "Use the Left & Right buttons\nto cycle between slides";
String InbewteenArrayInstructions = "Turn knob to shuffle\nbetween pictures";

import processing.sound.*;
SoundFile file;

void setup(){
  size(1080, 900);
  for (int i = 0; i<VicentePic.length;i++){
    VicentePic[i] = loadImage("VicentePic" +i+ ".jpg");
  }
  
  InitialPic = loadImage("InitialPic.jpg");
  
  font = createFont("SourceCodePro-Regular.ttf", 28);
  textFont(font);
  
  file = new SoundFile(this, "Los Tigres Del Norte - Un Consentido De Dios.aiff");
  file.play();
  
  printArray(Serial.list()); 
  String portName = Serial.list()[0]; 
  myPort = new Serial(this, portName, 9600);
}

void draw(){
  if ( myPort.available() > 0) { 
    val = myPort.read(); 
  }
  
  if(MasterArrayIndex == 1){
    VicenteDisplayPage();
    if(val> 204.8 && val <= 256){
    VicentePicIndex = 4;
    QuoteIndex =1;
  }else if(val>153.6 && val<204.8){
    VicentePicIndex = 3;
    QuoteIndex =1;
  }
  else if(val>102.4 && val<153.6){
    VicentePicIndex = 2;
    QuoteIndex =1;
  }else if(val>51.2 && val<102.4){
    VicentePicIndex = 1;
    QuoteIndex =1;
  }else if(val>0 && val<51.2){
    VicentePicIndex = 0;
    QuoteIndex =1;
  }
  }
  else{
    TitleDisplayPage();
  }
  
}

void VicenteDisplayPage(){
  background(#5D5453);
  textAlign(CENTER);
  text(Title[TitleIndex],225,0,700,300);
  image(VicentePic[VicentePicIndex],125,35, 861, 528);
  text(Quote[QuoteIndex],200,575,700,300);
  text(InbewteenArrayInstructions,205,800,700,300);  
}
void TitleDisplayPage(){
  background(#B7807E);
  textAlign(CENTER);
  image(InitialPic,125,35, 861, 528);
  text(Title[TitleIndex],205,0,700,300);
  text(Quote[QuoteIndex],200,575,700,300);
  text(Quote[QuoteIndex],200,575,700,300);
  text(TitleArrayInstructions,205,800,700,300);
}


void keyPressed() {
  if (key == CODED) {
//Used to Scroll through the images
    if (keyCode == RIGHT) {
      MasterArrayIndex++;
      TitleIndex++;
      QuoteIndex++;
    }
    
    if (keyCode == LEFT) {
      MasterArrayIndex--;
      TitleIndex--;
      QuoteIndex--;
    }
    if(keyCode == UP){
      MasterArrayIndex = 0;
      TitleIndex = 0;
      TitleIndex = 0;
      QuoteIndex = 0;
    }
  }
  
//Used to bounce back the Title once it hits the Max length of the array
//Or if -1 is hit accidentally or intentionally
  if(TitleIndex==Title.length){
    TitleIndex = 0;
  }
  if(TitleIndex== -1){
    TitleIndex = Title.length-1;
  }
  
//Used to bounce back the Master Array once it hits the Max length of the array
//Or if -1 is hit accidentally or intentionally
  if(MasterArrayIndex == 2){
    MasterArrayIndex = 0;
  }
  if(MasterArrayIndex == -1){
    MasterArrayIndex=1;
  }
//Used to bounce back the Quote Array once it hits the Max length of the array
//Or if -1 is hit accidentally or intentionally
  if(QuoteIndex==Quote.length){
    QuoteIndex = 0;
  }
  if(QuoteIndex== -1){
    QuoteIndex = Quote.length-1;
  }
}
