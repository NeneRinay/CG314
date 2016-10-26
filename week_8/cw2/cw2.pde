int amount= 100;
float [] x = new float [amount];
float [] y = new float [amount];
color [] sprinkles = new color [amount]; //without sprinkles, the code makes you draw black circles that fade to lower transparency circles

void setup(){
  size(800,700);
  noStroke();
  
}

void draw(){
  background(255);
  
  for (int i = x.length -1; i>0; i--){
    x[i] = x[i-1];
    y[i] = y[i-1];
    sprinkles[i] = color(random(100,255),random(100,255),random(100,255));
  }
  
  x[0]=mouseX;
  y[0]=mouseY;
  
  for(int i=0; i<x.length; i++){
    //fill(i * 4);
    fill(sprinkles[i]);
    ellipse(x[i], y[i], 40, 40);
    
  }
}