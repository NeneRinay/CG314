  float x;
  float y;
  float size;
  color theColor= color(100, 222, 255);

void setup(){
  size(800,600);
  background(255);
   x= width/2;
   y=height/2;
   size=60;
}

void draw(){
  //background(255);
  
   noStroke();
    fill(theColor);
    rect(x, y, size, size/2);
    triangle(x+size/2, y-size/4, x+size/2, y+size/4, x+size, y);
    
}