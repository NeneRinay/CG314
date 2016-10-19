//float x;
//float y;
//float size;
//color theColor = color(100, 222, 255);
Rocketship ship;
Rocketship ship2; //Rocketship is the class. ship2 is the object within the class.


void setup() {
  size(800, 600);
  //x= width/2;
  //y=height/2;
  //size=60;
  ship=new Rocketship (width/2, height/2, 150, color( 100, 100, 200));
  ship2= new Rocketship (width/4, height/4, 70, color(50,200,50));
}

void draw() {
  background(0);

  if (keyPressed) {
    ship.move();
    ship2.hover();
  } else {
    ship.hover();
    ship2.move();
  }
  ship.display();
  ship2.display();

  //fill(theColor);
  //rectMode(CENTER);
  //rect(x, y, size, size/2);
  //triangle(x+size/2, y-size/4, x+size/2, y+size/4, x+size, y);

  //for (int i=0; i<size; i++) {
  //  stroke(random(100, 255), random (0, 75), random(0, 75), random(0, 75));
  //  noFill();
  //  float circleSize = random(size/5, size/3);
  //  ellipse(x-size/1.7, y- size/4+i, circleSize, circleSize);
  //}
}