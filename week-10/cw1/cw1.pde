//CSV example

int[] homeruns;

void setup() {
  size(480, 120);
  Table stats = loadTable("Donaldson.csv", "header");
  homeruns = new int [stats.getRowCount()-2];
  for (int i=0; i<stats.getRowCount()-2; i++) {
    homeruns[i] = stats.getInt(i, 4); //it's the 4th row over
    //int year = stats.getInt(i, 0);
    //println(year + " " + homeruns);
  }
}

void draw() {
  background(255);
  noFill();
  beginShape();
  for (int i = 0; i < homeruns.length; i++) {
    float x = map(i, 0, homeruns.length-1, 20, 460);
    float y = map(homeruns[i], 0, 60, 100, 20);
    stroke(100);
    line(x, 0, x, height);
    stroke(255, 0, 0);
    vertex(x, y);
  }
  endShape();
}