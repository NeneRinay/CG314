class Peppers {
  float x;
  float y;
  float size;
  color theColor;

  Peppers (float tempX, float tempY, float tempSize, color tempColor) {
    x= tempX;
    y=tempY;
    size= tempSize;
    theColor= tempColor;
  }


  void drop() {
    y+=2;
    if (y>height+size) {
      y= - size;
    }
  }

  void hover() {
    x+=random(-1, 1);
    y+=random(-1, 1);
  }

  void display() {
    noStroke();
    //pepper
    fill(theColor);
    ellipse(x, y, size, size);
    quad(x+-79, y+-15, x+-67, y+22, x+0, y+30, x+3, y+-30);
    triangle(x+size+-198, y-size+28, x+size+-126, y+size+-37, x+size+-131, y+-16);
    //stem
    fill(82, 118, 78);
    rect(x+27, y+-4, size+-21, size/6);

    //for (int i=0; i<size; i++) {
    //  stroke(random(100, 255), random (0, 75), random(0, 75), random(0, 75));
    //  noFill();
    //  float circleSize = random(size/5, size/3);
    //  ellipse(x-size/1.7, y- size/4+i, circleSize, circleSize);
    //}
  }
}