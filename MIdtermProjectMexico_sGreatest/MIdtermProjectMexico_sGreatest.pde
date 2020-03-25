/*
"Honoring one of Mexico's greatest, 'Chespirito'" by David Calixto
Use the D-pad to alternate between 5 pictures altogether, including the base default picture
*/
int [] MasterArray = new int[3];
int MasterArrayIndex = 0;
PImage [] pic = new PImage[15];
int picIndex = 0;
PFont font;
String [] quote = {"Descansa en paz, Roberto ''Chespirito'' Gómez Bolaños Gracias por todos los años de alegria",
"R.I.P. Roberto ''Chespirito'' Gómez Bolaños, February 21, 1929 - November 28, 2014  "};
int quoteIndex = 0;
String [] Title = {"Roberto ''Chespirito'' Gómez Bolaños,","Vicente 'Chente' Fernández Gómez","Hugo Sánchez Márquez"};


void setup(){
  size(1080, 1080);
  for (int i = 0; i<pic.length;i++){
    pic[i] = loadImage("pic" +i+ ".jpg");
  }
  font = createFont("SourceCodePro-Regular.ttf", 24);
  textFont(font);
}

void draw(){
  background(107);
  image(pic[picIndex],125,0, 861, 528);
  text(quote[quoteIndex],200,550,700,300); 
   
}

void mouseClicked(){
  if(MasterArrayIndex == 0){
    //picIndex = 0;
    if(picIndex == 4){
        picIndex = 0;
      }
    else{
        picIndex++;
      }
     /*if(quoteIndex == quote.length - 1){
        quoteIndex = 0;
      }
      else{
        quoteIndex++;
      }*/
}
  if(MasterArrayIndex == 1){
    picIndex = 5;
    if(picIndex == 9){
        picIndex = 5;
      }
    else{
        picIndex++;
      }
     /*if(quoteIndex == quote.length - 1){
        quoteIndex = 0;
      }
      else{
        quoteIndex++;
      }*/
}
  if(MasterArrayIndex == 2){
    picIndex = 10;
    if(picIndex == pic.length-1){
        picIndex = 10;
      }
    else{
        picIndex++;
      }
     /*if(quoteIndex == quote.length - 1){
        quoteIndex = 0;
      }
      else{
        quoteIndex++;
      }*/
}
  if(MasterArrayIndex == 3){
    MasterArrayIndex = 0;
    picIndex = 0;
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
