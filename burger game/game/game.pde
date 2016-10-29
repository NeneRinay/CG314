//Rinay Apostolopoulos Midterm Game

PImage pinkKitchen;
PFont font;

void setup () {
  //background(255);
  pinkKitchen = loadImage("pinkKitchen.jpg");
  size(550, 730);
}

void draw() {
  image (pinkKitchen, 0, 0, 550, 730);
}