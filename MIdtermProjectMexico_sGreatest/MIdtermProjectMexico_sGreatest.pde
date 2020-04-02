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
String [] quote = {"Descansa en paz, Roberto ''Chespirito'' Gómez Bolaños Gracias por todos los años de alegria",
"R.I.P. Roberto ''Chespirito'' Gómez Bolaños, February 21, 1929 - November 28, 2014  "};
int quoteIndex = 0;
String [] Title = {"Mexico's Greatest","Roberto ''Chespirito'' Gómez Bolaños,","Vicente 'Chente' Fernández Gómez","Hugo Sánchez Márquez"};
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
  font = createFont("SourceCodePro-Regular.ttf", 24);
  textFont(font);
}

void draw(){
  background(107);
  if(MasterArrayIndex == 3){
    text(Title[TitleIndex],435,0,700,300);
    image(HugoPic[HugoPicIndex],125,35, 861, 528);
    text(quote[quoteIndex],200,575,700,300); 
    printArray(MasterArray);
  }
  else if(MasterArrayIndex == 2){
    text(Title[TitleIndex],435,0,700,300);
    image(VicentePic[VicentePicIndex],125,35, 861, 528);
    text(quote[quoteIndex],200,575,700,300);
    printArray(MasterArray);
  }
  else if(MasterArrayIndex == 1){
    text(Title[TitleIndex],435,0,700,300);
    image(ChespiritoPic[ChespiritoPicIndex],125,35, 861, 528);
    text(quote[quoteIndex],200,575,700,300);
    printArray(MasterArray);
  }else{
    image(InitialPic,125,35, 861, 528);
    text(Title[TitleIndex],435,0,700,300);
    printArray(MasterArray);
  }
  printArray(MasterArray);

  /*image(ChespiritoPic[ChespiritoPicIndex],125,0, 861, 528);
  text(quote[quoteIndex],200,550,700,300); 
   */
}

void mouseClicked(){
  if(MasterArrayIndex == 1){
    TitleIndex++;
    //picIndex = 0;
    if(ChespiritoPicIndex == ChespiritoPic.length - 1){
        ChespiritoPicIndex = 0;
        
      }
    else{
        ChespiritoPicIndex++;
      }
     /*if(quoteIndex == quote.length - 1){
        quoteIndex = 0;
      }
      else{
        quoteIndex++;
      }*/
}
  if(MasterArrayIndex == 2){
    TitleIndex++;
    //picIndex = 5;
    if(VicentePicIndex == VicentePic.length - 1){
        VicentePicIndex = 0;
      }
    else{
        VicentePicIndex++;
      }
     /*if(quoteIndex == quote.length - 1){
        quoteIndex = 0;
      }
      else{
        quoteIndex++;
      }*/
}
  if(MasterArrayIndex == 3){
    TitleIndex++;
    //picIndex = 10;
    if(HugoPicIndex == HugoPic.length-1){
        HugoPicIndex = 0;
        
      }
    else{
        HugoPicIndex++;
      }
     /*if(quoteIndex == quote.length - 1){
        quoteIndex = 0;
      }
      else{
        quoteIndex++;
      }*/
}
  if(MasterArrayIndex == 4){
    MasterArrayIndex = 0;
    TitleIndex=0;
    //picIndex = 0;
  }
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      MasterArrayIndex++;
    }
    if (keyCode == LEFT) {
      MasterArrayIndex--;
    }
  } 
}
