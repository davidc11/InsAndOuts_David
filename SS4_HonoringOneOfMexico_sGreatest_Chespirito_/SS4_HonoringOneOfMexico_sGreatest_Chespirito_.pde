/*
"Honoring one of Mexico's greatest, 'Chespirito'" by David Calixto
Use the D-pad to alternate between 5 pictures altogether, including the base default picture
*/

PImage img1;
PImage img2;
PFont font;
String qoute = "Descansa en paz, Roberto ''Chespirito'' Gómez Bolaños Gracias por todos los años de alegria";
String qoute2 = "R.I.P. Roberto ''Chespirito'' Gómez Bolaños, February 21, 1929 - November 28, 2014  ";
void setup(){
  size(1080, 1080);
  img2 = loadImage("BaseDefaultPicture.jpg");
  font = createFont("SourceCodePro-Regular.ttf", 24);
  textFont(font);
}

void draw(){
  background(107);
  if(keyPressed == false){
  image(img2,125,0, 861, 528);
  text(qoute2,200,550,700,300);
  }  
   

    if(keyPressed == true){
      image(img1, 125,0, 861, 528);
      text(qoute,200,550,800,300);

  }
}

void keyPressed(){
  if (key == CODED) {
    if (keyCode == UP) {
      img1 = loadImage("images.jpg");
    } else if (keyCode == DOWN) {
      img1 = loadImage("chespirito1.jpg");
    } 
      else if (keyCode == LEFT) {
      img1 = loadImage("youngChespirito.jpg");
    } 
     else if (keyCode == RIGHT) {
     img1 = loadImage("Chespirito'sPersonas.jpg");
    } else{
    
    }
  } 
}
