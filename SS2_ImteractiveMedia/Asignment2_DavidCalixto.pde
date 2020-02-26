//"Assignment 2 Interactive Media" by David Calixto
//Press D-Pad for specific colors or go nuts with any key on key board for random colors
//Click to change the fill & stroke for certain parts of the design

  float r;
  float g;
  float b;
  float r2;
  float g2;
  float b2;

void setup(){
size(1080, 720);
background(00,100, 200);
}
void draw(){
//circles
fill(r,g,b);
strokeWeight(5);
stroke(r2, g2, b2);
circle(540, 180, 100);

strokeWeight(4);
circle(540, 270, 80);

strokeWeight(3);
circle(540, 340, 60);

strokeWeight(2);
circle(540, 390, 40);

strokeWeight(1);
circle(540, 420, 20);

strokeWeight(0);
circle(540, 435, 10);

strokeWeight(10);
stroke(r, g, b);
fill(255,0,100);
quad(720, 360, 900, 540, 720, 720, 540, 540);

strokeWeight(5);
stroke(0);
fill(255);
line(540,540, 900, 540);

strokeWeight(20);
//Box
if (keyPressed == true) {
  fill(r, g, b);  
  stroke(r, g, b);
  } 

rect(100, 300, 295, 100, 20);


stroke(0);
//H
if (mousePressed == true) {
    stroke(r2,g2, b2);
  }
line(125,325, 125, 375);
line(125,350, 150, 350);
line(150,325, 150, 375);



//E

line(175,325, 175, 375);
line(175,350, 200, 350);
line(175,325, 200, 325);
line(175,375, 200, 375);

//L

line(225,325, 225, 375);
line(225,375, 250, 375);

//Second L

line(275,325, 275, 375);
line(275,375, 300, 375);

//O
//strokeWeight(10);
ellipseMode(CENTER);
ellipse(345, 350, 50, 50);



}

void keyPressed(){
  if (key == CODED) {
    if (keyCode == UP) {
      r  = (255);
      g  = (100);
      b = (200);
    } else if (keyCode == DOWN) {
      r  = (50);
      g  = (100);
      b = (255);
      
      
    } 
      else if (keyCode == LEFT) {
      r  = (200);
      g  = (100);
      b = (0);
    } 
     else if (keyCode == RIGHT) {
      r  = (0);
      g  = (200);
      b = (255);
    } 
  } else {
      r  = random(255);
      g  = random(255);
      b = random(255);
  }
}



void mousePressed(){ 
  r2 = random(255);
  g2 = random(255);
  b2 = random(255);
}
