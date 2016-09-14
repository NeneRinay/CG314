int x = 400;
int y = 500;
int bodyHeight = 210;
int neckHeight = bodyHeight/6;
int radius = 75; // Head Radius
int ny = y - bodyHeight - neckHeight - radius; // Neck Y
size(800, 600);
smooth();
strokeWeight(2);
background(400,200,100);
ellipseMode(RADIUS);
// Neck
  fill(102,120,60);
  rect(x-10,y/2,40,50);
// Antennae
strokeWeight(7);
line(x+12, ny, x+42, ny-99);
line(x+12, ny, x-22, ny-99);
// Body
strokeWeight(2);
fill(50,80,60);
ellipse(x-60, y-20, 20, 20);
ellipse(x+100, y-20, 20, 20);
fill(102,120,60);
ellipse(x-90, y-14, 20, 20);
ellipse(x+70, y-14, 20, 20);
fill(0);
rect(x-140, y-bodyHeight, 300, bodyHeight-33);
stroke(255);
fill(0);
triangle(x-30, x-50, x-30, x-2, x, x-25);
triangle(x+50, x-50, x+50, x-2, x+20, x-25);
ellipse(x+10,x-25,10,10);
// Head
stroke(0);
fill(0);
ellipse(x+12, ny, radius, radius);
stroke(0);
fill(255);
arc(ny+190, 180, 20, 20, 0, PI+QUARTER_PI, CHORD);
fill(255);
ellipse(x+55, ny, 20, 20);
fill(0);
ellipse(x+55, ny, 10, 10);
fill(255);
ellipse(x+55, ny, 9, 9);
fill(0);
ellipse(x+55, ny, 1, 1);
fill(0);
ellipse(x-30, ny, 2, 2);