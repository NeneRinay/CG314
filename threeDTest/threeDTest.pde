import nervoussystem.obj.*;

//PShape punkHead;
//PImage img;
//float x, y, z;
//float rotation = PI/48;
//float jim = 12;
//float rotationy;
//float rotationx;

//void setup() {
//  size(800, 480, P3D);
//  punkHead = loadShape("punkHead.OBJ");

//  //noCursor();

//  x=width/2;
//  y=height/2;
//  z=100;

//  img = loadImage("wood.jpg");
//}

//void draw() {
  
//  strokeWeight(2);
  
//  //Will
//  background(0);
//  translate(mouseX, mouseY, z);
//  rotate(PI);
//  //rotate(PI);
//  rotateX(400);
//  rotateY(0);
//  shape(punkHead, 0, -200, 300, 400);
//  texture(img);
//}

float a = 0;
PShape punkHead;

void setup() {
  size(400, 400, P3D);
  punkHead = loadShape("punkHead.OBJ");
}

void draw() {
  background(0);
  noStroke();
  //lights();
  pushMatrix();
  translate(width/2, height/2, -100);
  a = a + 0.01;
  rotateX(a);
 beginShape();

shape(punkHead, 0, -200, 300, 400);
//  texture(img);

  endShape();

  popMatrix();
}