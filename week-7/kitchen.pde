// I fucked smth up so you wont be able to change size of my peppers jsyk

//float x;
//float y;
//float size;
//color theColor= color(240, 29, 29);

Peppers red;
Peppers yellow;
Peppers green;

void setup() {
  size(800, 900);

  //x= width/2;
  //y=height/2;
  //size=60;

  red=new Peppers (width/2, height/2, 60, color(240, 29, 29));
  yellow=new Peppers (width/4, height/4, 60, color(240, 216, 36));
  green=new Peppers (width/1.2, height/8, 60, color(68, 129, 74));
}

void draw() {
  background(255);


  if (keyPressed) {
    red.hover();
    yellow.hover();
    green.hover();
  } else {
    red.drop();
    yellow.drop();
    green.drop();
  }

  red.display();
  yellow.display();
  green.display();
}