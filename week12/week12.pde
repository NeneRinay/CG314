//make object rect come toward you in 3D space

//float x,y,z;

//void setup() {
//  size(800,600, P3D);
//  x = width/2;
//  y = height/2;
//  z = 0;
//}

//void draw() {
//  translate(x,y,z);
//  rectMode(CENTER);
//  rect(0,0,80,80);

//  z++; 
//}


//-----------------------------------------------------------------------------
//rotate object rect in 3D space

//float x, y, z;
//float rotation = PI/48;


//void setup(){
//   size(800, 600, P3D); 
//   x = width/2;
//   y = height/2;
//   z = 0;
//}


//void draw(){
//  background(0);
//  translate(x,y,z);
//  rotateX(radians(mouseX/2));
//  rotateY(rotation*1.5);
//  rectMode(CENTER);
//  rect(0,0,100,100);
//  rotation+= PI/48;
//}

//-----------------------------------------------------------------------------
//make a 3D spinny box and pray that it works. with lighting.

//float x, y, z;
//float rotation = PI/48;


//void setup(){
//   size(800, 600, P3D); 
//   x = width/2;
//   y = height/2;
//   z = 0;
//}


//void draw(){
//  //ambientLight(0, 255, 0);
//  //directionalLight(0,255,0,0,-1,0);
//  pointLight(0,255,0, 0, height/2, 1000);
//  stroke(255);
//  sphereDetail(5); //determines how many triangles are on sphere
//  background(0);
//  translate(x,y,z);
//  rotateY(rotation);
//  rotateX(rotation*0.3);
//  //box(100);
//  sphere(100);
//  rotation+= PI/48;
//}

//------------------------------------------------------------------------------

////3D rotating triangle. (pro tip: there's a difference between rotating first or translating first)

//float x, y, z;
//float rotation = PI/48;


//void setup() {
//  size(800, 600, P3D); 
//  x = width/2;
//  y = height/2;
//  z = 0;
//}


//void draw() {
//  background(0);
//  lights();
//  stroke(255);
//  //translate(x, y, z);
//  rotateX(rotation);
//  rotateY(rotation/2);
//  rotateZ(rotation*1.5);
//   translate(x, y, z);

//  beginShape();
//  vertex(-100, -100, -100);
//  vertex( 100, -100, -100);
//  vertex(   0, 0, 100);
//  vertex( 100, -100, -100);
//  vertex( 100, 100, -100);
//  vertex(   0, 0, 100);
//  vertex( 100, 100, -100);
//  vertex(-100, 100, -100);
//  vertex(   0, 0, 100);
//  vertex(-100, 100, -100);
//  vertex(-100, -100, -100);
//  vertex(   0, 0, 100);

//  endShape();

//  rotation+=radians(0.5);
//}

//-----------------------------------------------------------------------------
////applying textures. long way to make a quad.

//PImage tex,tex2;
//float rotx = PI/4;
//float roty = PI/4;
//float rotation = PI/64;

//void setup() {
//  size(640, 360, P3D);
//  //tex2 = loadImage("dog.jpg");
//  tex = loadImage("dog2.jpg");
//  textureMode(NORMAL);
//  fill(255);
//  stroke(color(44, 48, 32));
//}


//void draw() {
//  background(0);
//  noStroke();
//  translate(width/2.0, height/2.0, -100);
//  rotateX(rotx);
//  rotateY(roty);
//  scale(90);
//  TexturedCube(tex);

//  rotx += rotx + rotation;
//  roty += roty + rotation*0.5;
//}


//void TexturedCube(PImage tex) {
//  beginShape(QUADS);
//  texture(tex);


//  // +Z "front" face
//  vertex(-1, -1, 1, 0, 0);
//  vertex( 1, -1, 1, 1, 0);
//  vertex( 1, 1, 1, 1, 1);
//  vertex(-1, 1, 1, 0, 1);

//  // -Z "back" face
//  vertex( 1, -1, -1, 0, 0);
//  vertex(-1, -1, -1, 1, 0);
//  vertex(-1, 1, -1, 1, 1);
//  vertex( 1, 1, -1, 0, 1);


//  // +Y "bottom" face
//  vertex(-1, 1, 1, 0, 0);
//  vertex( 1, 1, 1, 1, 0);
//  vertex( 1, 1, -1, 1, 1);
//  vertex(-1, 1, -1, 0, 1);


//  // -Y "top" face
//  vertex(-1, -1, -1, 0, 0);
//  vertex( 1, -1, -1, 1, 0);
//  vertex( 1, -1, 1, 1, 1);
//  vertex(-1, -1, 1, 0, 1);


//  // +X "right" face
//  vertex( 1, -1, 1, 0, 0);
//  vertex( 1, -1, -1, 1, 0);
//  vertex( 1, 1, -1, 1, 1);
//  vertex( 1, 1, 1, 0, 1);


//  // -X "left" face
//  vertex(-1, -1, -1, 0, 0);
//  vertex(-1, -1, 1, 1, 0);
//  vertex(-1, 1, 1, 1, 1);
//  vertex(-1, 1, -1, 0, 1);


//  endShape();
//}


//void mouseDragged() {
//  float rate = 0.01;
//  rotx += (pmouseY-mouseY) * rate;
//  roty += (mouseX-pmouseX) * rate;
//}

//-----------------------------------------------------------------------------
//easy way to make a quad? anyway, i made a spinny, textured "earth".

//PImage img;
//PShape earth;
//float x, y, z;


//void setup() {
//  size(800, 600, P3D); 
//  sphereDetail(40);
//  noStroke();
//  //img=loadImage("dog2.jpg");
//  img=loadImage("earth.jpg");
//  earth = createShape(SPHERE, 20);
//  earth.setTexture(img); 
//  x = width/2;
//  y=height/2;
//  z=0;
//}

//void draw() {
//  background(0);
//  lights();
  
//  //earth spins and stays in place
//  //translate(width/2, height/2, 0);
//  //earth.rotateY(radians(1));
//  //shape(earth, 0, 0);

//  //earth spins and slowly drifts away.
//  earth.rotateY(radians(1));
//  translate(x,y,x);
//  shape(earth, 0, 0);
//  x+=.2;
//  y+=.2;
//}

//------------------------------------------------------------------------------
//camera angles.

PImage img;
PShape earth;
float x, y, z;


void setup() {
  size(800, 600, P3D); 
  sphereDetail(40);
  noStroke();
  //img=loadImage("dog2.jpg");
  img=loadImage("earth.jpg");
  earth = createShape(SPHERE, 100);
  earth.setTexture(img); 
  x = width/2;
  y=height/2;
  z=0;
}

void draw() {
  background(0);
  lights();
  
  //earth spins and stays in place
  translate(width/2, height/2, 0);
  earth.rotateY(radians(1));
  shape(earth, 0, 0);

//move your mouse around to zoom in and out of planet
camera(mouseX, height/2, (mouseY/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
}