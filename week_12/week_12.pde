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

float x, y, z;
float rotation = PI/48;


void setup(){
   size(800, 600, P3D); 
   x = width/2;
   y = height/2;
   z = 0;
}


void draw(){
  //ambientLight(0, 255, 0);
  //directionalLight(0,255,0,0,-1,0);
  pointLight(0,255,0, 0, height/2, 1000);
  stroke(255);
  sphereDetail(5); //determines how many triangles are on sphere
  background(0);
  translate(x,y,z);
  rotateY(rotation);
  rotateX(rotation*0.3);
  //box(100);
  sphere(100);
  rotation+= PI/48;
}

//------------------------------------------------------------------------------