/*
"Honoring one of Mexico's greatest, 'Chespirito'" by David Calixto
Use the D-pad to alternate between 5 pictures altogether, including the base default picture
*/
int [] MasterArray = new int[3];
int MasterArrayIndex = 0;
PImage [] ChespiritoPic = new PImage[5];
PImage InitialPic;
int ChespiritoPicIndex = 0;
PImage [] VicentePic = new PImage[5];
int VicentePicIndex = 0;
PImage [] HugoPic = new PImage[5];
int HugoPicIndex = 0;
PFont font;
String [] Quote = {"Tres de los mejores de mi Mexico Querido <3 \n Three of my beloved Mexico's best <3",
"Descansa, Roberto ''Chespirito'' Gómez Bolaños. \n Gracias por todos los años de alegria \nFebruary 21, 1929 - November 28, 2014",
"Vicente 'Chente' Fernández Gómez\n Por siempre ''El Rey De Las Rancheras'\n Forever the ''King of rancheras'''",
"Hugo Sánchez Márquez \nUno de los maximo goleadores de mi Mexico Querido <3\nOne of the top Mexican goal scorers"};

int QuoteIndex = 0;
String [] Title = {"Mexico's Greatest","Roberto ''Chespirito'' Gómez Bolaños",
"Vicente ''Chente'' Fernández Gómez", "Hugo Sánchez Márquez"};
int TitleIndex = 0;

void setup(){
  size(1080, 1080);
  for (int i = 0; i<ChespiritoPic.length;i++){
    ChespiritoPic[i] = loadImage("ChespiritoPic" +i+ ".jpg");
  }
  for (int i = 0; i<VicentePic.length;i++){
    VicentePic[i] = loadImage("VicentePic" +i+ ".jpg");
  }
  for (int i = 0; i<HugoPic.length;i++){
    HugoPic[i] = loadImage("HugoPic" +i+ ".jpg");
  }
  InitialPic = loadImage("InitialPic.jpg");
  font = createFont("SourceCodePro-Regular.ttf", 28);
  textFont(font);
}

void draw(){
  //background(107);
  if(MasterArrayIndex == 3){
    HugoDisplayPage();
  }
  else if(MasterArrayIndex == 2){
    VicenteDisplayPage();
  }
  else if(MasterArrayIndex == 1){
    ChespiritoDisplayPage();
  }
  else{
    TitleDisplayPage();
  }
  printArray(MasterArray);
}

void HugoDisplayPage(){
  background(#CB1919);
  textAlign(CENTER);
  text(Title[TitleIndex],200,0,700,300);
  image(HugoPic[HugoPicIndex],125,35, 861, 528);
  text(Quote[QuoteIndex],200,575,700,300);
  printArray(MasterArray);  
}
void VicenteDisplayPage(){
  background(#5D5453);
  textAlign(CENTER);
  text(Title[TitleIndex],225,0,700,300);
  image(VicentePic[VicentePicIndex],125,35, 861, 528);
  text(Quote[QuoteIndex],200,575,700,300);
  printArray(MasterArray);
}
void ChespiritoDisplayPage(){
  background(#5D55D8);
  textAlign(CENTER);
  text(Title[TitleIndex],200,0,700,300);
  image(ChespiritoPic[ChespiritoPicIndex],125,35, 861, 528);
  text(Quote[QuoteIndex],200,575,700,300);
  printArray(MasterArray);
}
void TitleDisplayPage(){
  background(#B7807E);
  textAlign(CENTER);
  image(InitialPic,125,35, 861, 528);
  text(Title[TitleIndex],205,0,700,300);
  text(Quote[QuoteIndex],200,575,700,300);
  text(Quote[QuoteIndex],200,575,700,300);
  printArray(MasterArray);
}

void mouseClicked(){
//This is Chesperito's images
  if(MasterArrayIndex == 1){
    if(ChespiritoPicIndex == ChespiritoPic.length - 1){
        ChespiritoPicIndex = 0;
        
      }
    else{
        ChespiritoPicIndex++;
      }
  }
//This is Vicente's images
  if(MasterArrayIndex == 2){
    if(VicentePicIndex == VicentePic.length - 1){
        VicentePicIndex = 0;
      }
    else{
        VicentePicIndex++;
      }
    }
//This is Hugo's images
  if(MasterArrayIndex == 3){
    if(HugoPicIndex == HugoPic.length-1){
        HugoPicIndex = 0;
        
      }
    else{
        HugoPicIndex++;
      }
  }
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
      MasterArrayIndex++;
      TitleIndex++;
    }
    if(keyCode == DOWN){
      MasterArrayIndex--;
      TitleIndex--;
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
  if(MasterArrayIndex == 4){
    MasterArrayIndex = 0;
  }
  if(MasterArrayIndex == -1){
    MasterArrayIndex=3;
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
