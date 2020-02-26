//"Assignment 3 Loops Practice" by David Calixto
/*Press D-Pad for specific colors or go nuts with any key on key board for random colors
  Click to change the fill & stroke for certain parts of the design. 
  Drag mouse to top left side of screen for "Hello", to the top right side for "bye."
  Drag mouse to bottom half of screen to display nested for loops with squares all different color
  "Hello & Bye" still present whether on top or bottom but for only those two stay on top half
 
  */
  float r;
  float g;
  float b;
  float r2;
  float g2;
  float b2;

void setup(){
size(800, 800);

}
void draw(){
  background(00,100, 200);
  stroke(0);
  fill(255);
  if (mouseX < width/2)
  {
    if (keyPressed == true) {
  fill(r, g, b);  
  stroke(r, g, b);
  } 
  strokeWeight(20);
//Box
rect(0, 50, 310, 100, 20);


stroke(0);

//H
if (mousePressed == true) {
    stroke(r2,g2, b2);
  }
line(30, 75, 30, 125);
line(30, 100, 60, 100);
line(60, 75, 60, 125);



//E

line(90,75, 90, 125);
line(90,75, 115, 75);
line(90,100, 115, 100);
line(90,125, 115, 125);

//L

line(140,75, 140, 125);
line(140,125, 165, 125);

//Second L

line(190,75, 190, 125);
line(190,125, 215, 125);

//O
//strokeWeight(10);
ellipseMode(CENTER);
ellipse(260, 100, 50, 50);
  }
  else if(mouseX>width/2){
    if (keyPressed == true) {
  fill(r, g, b);  
  stroke(r, g, b);
  } 
  strokeWeight(20);
//Box
  rect(500, 50, 225, 100, 20);

  stroke(0);
  if (mousePressed == true) {
    stroke(r2,g2, b2);
  }

  //B
  line(525,75,525,130);
  ellipseMode(CENTER);
  ellipse(550, 120, 35, 25);
  ellipse(550, 85, 35, 25);
  
  //Y
  line(590,75,610,100);
  line(630,75,610,100);
  line(610,100,610,130);
  
  //E
  line(660,75, 660, 130);
  line(660,75, 685, 75);
  line(660,102.5, 685, 102.5);
  line(660,130, 685, 130);
  }
  
    fill(random(255),random(255),random(255));
    stroke(255);
    strokeWeight(1);
  
  if(mouseY>height/2){
    
    for(int i=0; i<width; i+=5){
      square(i,400, 5);
    for(int j=400;j<height;j+=5){
      fill(random(255),random(255),random(255));
      stroke(255);
      strokeWeight(1);
      
      square(i,j,5);
    }
    
  }
  }
  
  
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
