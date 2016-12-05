//DONT FORGET TO UPLOAD TO GITHUB

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
// myScene and myScene2 are class objects i think....
//-------------------------------------------------------------------------------------

import processing.video.*;
import ddf.minim.*;

Movie video;

Minim minim;
AudioPlayer soundPlayer;
AudioInput input;


// //booleans
//boolean titleScreen;
//boolean guyScene1;
//boolean girlScene1;
//boolean guyScene2;
//boolean girlScene2;
//....etc, you get the idea.

int scene = 1;
PImage dog1;
PImage dog2;
PImage dog3;
Scenes myScene1;
Scenes myScene2;
Scenes myScene3;

void setup() {
  size(800, 480);


  dog1 = loadImage("dog1.png");
  dog2 = loadImage("dog2.png");
  dog3 = loadImage("dog3.png");

  myScene1 = new Scenes (dog1, 1);
  myScene2 = new Scenes (dog2, 2);
  myScene3 = new Scenes (dog3, 3);

  //titleScreen = true;
  //guyScene1 = false;
  //guyScene2 = false;


  video = new Movie(this, "casablancaSmall.mp4");
  video.loop();

  minim = new Minim(this);
  soundPlayer = minim.loadFile("dogWisdom.mp3");
  //soundPlayer.play();
  input = minim.getLineIn();
}

void draw() {

  background(0);


  image(video, 0, 0); //you  need this to actually show the video

  loadPixels();

  //-------------------------------------------------------------------------
  //DRIVE IN THEATRE SCENE (not sure if this does in finalProject or Scenes)

  if ( keyPressed) {
    video.loadPixels();
    for (int x = 0; x<width; x++) {
      for (int y = 0; y<height; y++) {
        int theIndex = x + y * width;
        float r = 255 - (red(video.pixels[theIndex]));
        float g = 255 - (green(video.pixels[theIndex]));
        float b = 255 - (blue(video.pixels[theIndex]));
        pixels[theIndex] = color(r+33, g+-2, b+0);
        soundPlayer.play();
        video.volume(0);
      }
    }
  }

  updatePixels();
  video.updatePixels();
}

void movieEvent(Movie video) {
  video.read();
}

//ignore dis shit
//void keyReleased() {
//  video.volume(1);
//  soundPlayer.close();
//}

//-------------------------------------------------------------------

//SCORES. 
//Make it so 3 goodPoints = GoodEnding or 3 badPoints = BadEnding. This
//point system only comes into play after youve chosen one person to date. 

//this goes right before void setup probably
//int badPointsGuy1 = 0
//int goodPointsGuy1 = 0
//int badPointsGuy2 = 0
//int goodPointsGuy2 = 0

//this goes in a function i guess?
//if (click this good place) goodPointsGuy1+= 1
//if (click this other good place) goodPointsGuy1+= 1
//ending changes depending on if you get 3 goodPoints or 3 badPoints first

//if (goodPointsGuy1 = 3) goodEnding = true
//if (badPointsGuy1 = 3) badEnding = true

//-------------------------------------------------------------------------------

//MOUSE CLICKING STUFF

//if (mousePressed && mouseX >catX-30 && mouseX <catX+365 && mouseY >catY+0 && mouseY <catY+300) {
//    image (angry, catX,catY);
//  }
//  if (mousePressed && (mouseX >catX-30 && mouseX <catX+365 && mouseY >catY+0 && mouseY <catY+300)
//    && (m<5000)){
//    image (happy, catX, catY);
//  }
//}

//void mouseClicked() {
//  if (mouseX > 0 && mouseX <200 && mouseY >0 && mouseY <102) {
//    barnap = true;
//    start=millis();
//  } else if (mouseX > 10 && mouseX <200 && mouseY >130 && mouseY <230) {  
//    barfood = true;
//    start2=millis();
//  } 

//-------------------------------------------------------------------------------