int stars = 300;

float [] x = new float [stars]; //this declares x as an array
float [] y = new float [stars];
float [] shade = new float [stars];
float [] diameter = new float [stars];

void setup () {
  size (800, 700);

  //(arrays have a property called .length .... example: x.length)
  // x= new float [5]; //this creates an array of five empty float values for x

  //x[0] = 30;
  //x[1] = 66;
  //x[2]= 1;
  //x[3] = 95;
  //x[4] = 112;

  for (int i = 0; i<x.length; i++) {
    x[i] = random (1, width);
    y[i] = random (1, height);
    shade [i] = random (100, 220);
    diameter [i] = random (1, 6);
  }
}


void draw () {
  background(0);

  for (int i=0; i<x.length; i++) {
    fill(shade[i]);
    ellipse(x[i], y[i], diameter[i], diameter[i]);
    y[i] += 0.1;
    if (y[i]>height) {
      y[i] = 0;
    }
  }
}