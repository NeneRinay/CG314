// -scene where you and bf are sitting watching tv (video plays on tv. maybe have 
// option to change channel or pixels. whatever you change it to determines if bf gets 
// mad at you.)
// -ending where ur bf breaks up with u. he's dramatically leaning against a wall with
// his arm covering his eyes (also he's shirtless) and he's crying smth like "i just
// can't do this anymore."
// -the final screen is just the camera showing yourself and it says
// smth cheesy like "all you rly need is you uwu" *glitter on screen* 

//make draw loop as simple as possible but make lotsa functions.
//example: 
//int scene = 1;
//void draw(){
//  if (scene=1){
//    myScene();
//  }else if(scene=2){
//    myScene2();
//  }
// myScene and myScene2 are voids i think....
//-------------------------------------------------------------------------------------


//booleans
boolean titleScreen;
boolean guyScene1;
boolean girlScene1;
boolean guyScene2;
boolean girlScene2;
//....etc, you get the idea.

void setup() {
  //size(640,480);
  size(720, 480);
  //size(1280,720);
  //size(854,480);

  //here's where we load images such as:  egg = loadImage("egg.png");
  //here's where we load class Objects such as:  egg1 = new Ingredients(egg);

  titleScreen = true;
  guyScene1 = false;
  guyScene2 = false;
}

void draw() {

  //maybe this works? 
  //if (titleScreen == true) {
  //  background(255);
  //} else if (keyPressed && key == 'k') {
  //  titleScreen = false;
  //  guyScene1 = true;
  //  background (0);
  //} else if (keyPressed && key == 'k') {
  //  guyScene1 = false;
  //  guyScene2 = true;
  //  background(100);
  //}


  //if (keyPressed && key == 'k') titleScreen = false;
  //if (keyPressed && key == 'k' && titleScreen == false) guyScene1 = true;
  //if (keyPressed && key == 'k' && guyScene1 == true) guyScene2 = true;


  //if (titleScreen == true) {
  //  background(255);
  //} else if (guyScene1 == true) {
  //  background(0);
  //} else if (guyScene2 == true) {
  //  background(100);
  //}
}