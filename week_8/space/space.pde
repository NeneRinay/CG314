//array objects

float x;
float y;
float size;
color theColor = color(100, 222, 255);


Rocketship[] ship = new Rocketship[10];

void setup() {
  size(800, 600);


  for (int i=0; i<ship.length; i++) {
    float x = random (1, width);
    float y= random (1, height);
    float size= random (5, 100);
    color theColor = color(random(100, 255), random(100, 255), random(100, 255));
    ship[i]= new Rocketship(x, y, size, theColor);
  }
}

void draw() {
  background(0);

  if (keyPressed) {
    for (Rocketship s : ship) { //this means s will now forever stand for ship
      s.move();
    }
  } else {
    for (Rocketship s : ship) {
      s.hover();
    }
  }
  for (Rocketship s : ship) {
    s.display();
  }
}