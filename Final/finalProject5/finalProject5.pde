//DONT FORGET TO UPLOAD TO GITHUB
//things to ask prof:
//can i load a truly 3D model? (so that when it rotates, it doesnt turn out to just be flat)
//how to get my video to keep looping after the first time it plays
//how to get the snow array to work properly so that it's not constantly redrawing the snow but still letting it gradually fall
//how can i draw the snow once (in setup) but ensure it only gets draw on scene 7?
//ask if i'm doomed to have a really long list of Strings for every line of text I wanna write
//also, if the text is really long, how to make it continue on the next line without writing it as a new String


//Rinay Apostolopoulos -- Final Project
//CG314
//Dec 03, 2016


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


// int, PImage, Classes & Objects, etc...

String s = "I AM TEXT";
String d = "''SAME HERE! BOY OH BOY. I SURE DO LIKE TO BE A DOG. BORK BORK BORK.''";
//String [] words = splitTokens(s, ", !.");
//float xPos = 10;

int scene = 1;
int spaceCount = 0; //spaceCount is the number of times the spacebar has been pressed. this is important because it allows the space button to be used for many different functions, so long as you change this number value for each new function.
PImage dog1;
PImage dog2;
PImage dog3;
PImage dog4;
PImage dang;
Scenes myScene1;
Scenes myScene2;
Scenes myScene3;
Scenes myScene6;
Scenes myScene7;
Theater casablanca;


void setup() {
  size(800, 480);


  dog1 = loadImage("dog1.png");
  dog2 = loadImage("dog2.png");
  dog3 = loadImage("dog3.png");
  dog4 = loadImage("dog4.png");
  dang = loadImage("dang.png");

  myScene1 = new Scenes (dog1, 1);
  myScene2 = new Scenes (dog2, 2);
  myScene3 = new Scenes (dog3, 3);
  myScene6 = new Scenes (dog4, 6);
  myScene7 = new Scenes (dang, 7);
  casablanca = new Theater ();

  video = new Movie(this, "casablancaSmall.mp4");

  minim = new Minim(this);
  soundPlayer = minim.loadFile("dogWisdom.mp3");
  ////soundPlayer.play();

  if (scene==5) { //THIS WHOLE PORTION DOESNT EVEN DO ANYTHING??? i could comment it out and it'd be the same
    casablanca.driveIn2(); // this rly shouldnt be here 
    //video.volume(0);
    video.loop(); //it doesnt loop, it just stops :/ CUZ THIS WHOLE PORTION DON'T WORK.
  }
}

void draw() {

  background(255);

  //THIS CHANGES THE CURSOR FROM AN ARROW TO A HAND
  if (mousePressed == true) {
    cursor(HAND); // Draw cursor as hand
  } else {
    cursor(ARROW);
  }


  ////image(video, 0, 0);

  //loadPixels();

  //-------------------------------------------------------------------------
  ////DRIVE IN THEATRE SCENE (not sure if this goes in finalProject or Scenes)

  //if ( keyPressed) {
  //  video.loadPixels();
  //  for (int x = 0; x<width; x++) {
  //    for (int y = 0; y<height; y++) {
  //      int theIndex = x + y * width;
  //      float r = 255 - (red(video.pixels[theIndex]));
  //      float g = 255 - (green(video.pixels[theIndex]));
  //      float b = 255 - (blue(video.pixels[theIndex]));
  //      pixels[theIndex] = color(r+33, g+-2, b+0);
  //      soundPlayer.play();
  //      video.volume(0);
  //    }
  //  }
  //}

  //----------------------------------------------------------------------

  // Display the contents of the current scene

  if (scene == 1) {
    myScene1.display();
    myScene1.dialogueBox(); 
    //if (mousePressed && (mouseX >-30 && mouseX <+365 && mouseY >+0 && mouseY <+300)){
    fill(255);
    stroke(0);
    strokeWeight(3);
    textSize(20);
    text(s, 35, 303);
    textSize(15);
    text(d, 35, 350);
    if (spaceCount>=1) {
      scene = 2;
    }
  } else if (scene == 2) {
    myScene2.display();
    myScene2.dialogueBox();
    //if (mousePressed && (mouseX >-30 && mouseX <+365 && mouseY >+0 && mouseY <+300)){
    if (spaceCount>=2) {
      scene = 3;
    }
  } else if (scene == 3) {
    myScene3.display();
    myScene3.dialogueBox();
    if (mousePressed) {
      scene = 4;
      spaceCount = 0; //Reset spaceCount back to zero here so so that, if you press the spacebar a bunch of times while on a scene that doesn't use the spacebar, the next scene will consider it as though you hadn't pressed it at all. This ensures that the space button always does its job... Just make sure that on the next scene, you restart the spaceCount from 1 again.
    }
  } else if (scene == 4) {
    background(255, 0, 0);
    if (spaceCount>=1) { //as seen here 
      scene = 5;
    }
  } else if (scene == 5) {
    casablanca.driveIn();
    video.play(); //idk man i just cant get the video to loop without the audio screwing up :/
    if (spaceCount>=2) {
      scene = 6;
    }
  } else if (scene == 6) {
    video.stop(); //this stops casablancaSmall.mp4 from continuing to play
    soundPlayer.close(); //this stops dogWisdom.mp3 from continuing to play
    myScene6.display();
    myScene6.dialogueBox();
    if (spaceCount>=3) {
      scene = 7;
    }
  } else if (scene == 7) {
    myScene7.display();
    myScene7.dialogueBox();
    myScene7.snowFall();
  }
}
//------------------------------------------------------------------------------

//MORE STUFF FOR DRIVE IN SCENE

//updatePixels();
//video.updatePixels();
//}

void movieEvent(Movie video) {
  video.read();
}

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
