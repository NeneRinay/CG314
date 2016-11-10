//Rinay Apostolopoulos, HW 10 

int[] homeless;
PImage Photo;
int nycX = 3;
int nycY = 3;

void setup() {
  Photo = loadImage("photo.jpg");
  size(480, 620);
  Table stats = loadTable("homelessness.csv", "header");
  homeless = new int [stats.getRowCount()];
  for (int i=0; i<stats.getRowCount(); i++) {
    homeless[i] = stats.getInt(i, 1); //it's the 1st row over
  }
}

void draw() {
  image (Photo, -212, 0, 1055, 620);

  textAlign(CENTER);
  fill(255, 0, 0);
  textSize(32);
  text("HOMELESSNESS IN AMERICA", 243, 46);

  fill(255, 0, 0);
  textSize(16);
  text("NYC", 30, 423);
  text("3,262", 32, 439);
  text("SF,CA", 91, 433);
  text("3,106", 91, 452);
  text("LA,CA", 147, 261);
  text("12,977", 147, 282);
  text("WA", 212, 469);
  text("1,898", 214, 488);
  text("FL", 275, 507);
  text("487", 276, 525);
  text("DC", 342, 509);
  text("305", 342, 527);
  text("IL", 404, 477);
  text("1,722", 402, 496);
  text("MA", 463, 504);
  text("182", 463, 521);


  noFill();
  beginShape();
  for (int i = 0; i < homeless.length; i++) {
    float x = map(i, 0, homeless.length-1, 22, 466);
    float y = map(homeless[i], 0, 2106, 106, 47);
    stroke(100);
    strokeWeight(1);
    //line(x, 0, x, height);
    stroke(255, 0, 0);
    strokeWeight(3);
    vertex(x+0, y+385);
  }
  endShape();
}