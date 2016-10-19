class Peppers {
  float x;
  float y;
  float size;
  float theColor;
  
Peppers (float tempX, float tempY, float tempSize, color tempColor) {
  x= tempX;
  y=tempY;
  size= tempSize;
  theColor= tempColor;
}
  
  
  void drop(){
  y+=2;
}
  
  
  void display(){
    //noStroke();
    //fill(theColor);
    //rect(x, y, size, size/2);
    
    
  }
}