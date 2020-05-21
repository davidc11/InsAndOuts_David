PFont font;

void setup(){
  size(1080, 900);
  
  font = createFont("SourceCodePro-Regular.ttf", 40);
  textFont(font);
}

void draw(){
  //CalmMode();
  //CautionMode();
  //AngryMode();
}

void CalmMode(){
  background(#00FF00);
  textAlign(CENTER);
  text("Come be my friend\nJust don't touch my head ",200,100,700,300);
}

void CautionMode(){
  background(#FFFF00);
  textAlign(CENTER);
  text("Careful there friend.\nYou're getting too close\nto my head.\n }:(",200,300,700,300);
}

void AngryMode(){
  background(#FF0000);
  textAlign(CENTER);
  text("!!GET AWAY FROM MY HEAD FOOL!!\n >:( >:(",100,600,900,500);
}
