void setup(){
  size(500,500);
  background(0,0,0);
}

  float x = 0.005;
  float r = 0;
  float comp = 10;
  float c = 0;
  
//Flower WHAT????

void draw(){
 
 if (mousePressed){
   r = r + x;
   c = c + x;
   stroke(255,255,255);
   point(mouseX + r * sin(c), mouseY + r * cos(c));
   point(mouseX - r * sin(c), mouseY - r * cos(c));
   point(mouseX + r * sin(c), mouseY - r * cos(c));
   point(mouseX - r * sin(c), mouseY + r * cos(c));
   //point(mouseX * sin(c), mouseY + r * cos(c));
   //point(mouseX * sin(c), mouseY - r * cos(c));
   //point(mouseX + r * sin(c), mouseY * cos(c));
   //point(mouseX - r * sin(c), mouseY * cos(c));  
   
   if (r / comp >= 1){
     x = x + 0.005;
     comp = comp + 10;
   }
   
  }
 
 else {
  r = 0;
  x = 1;
  comp = 10;
}

}

void keyPressed(){
  if (key == ' '){
    background(0,0,0);
  }
  
  if (key == 's'){
    saveFrame("####.png");
  }
}


