//Rinay Apostolopoulos Midterm Game
//CG314
//Oct 29, 2016

//INSTRUCTIONS: Press any key to start. Then use left and right arrow keys 
//to catch ingredients as they fall. Simple stuff. To win, you must survive long
//enough to catch the final ingredient: the Top Bun. You lose immediately if you
//fail to catch any of the ingredients inbetween. Have fun!

import ddf.minim.*;
//import ddf.minim.analysis.*;
//import ddf.minim.effects.*;
//import ddf.minim.signals.*;
//import ddf.minim.spi.*;
//import ddf.minim.ugens.*;

Minim minim;
AudioPlayer soundPlayer;
AudioInput input;

//classes
Player player;
Ingredients spinach1;
Ingredients patty1;
Ingredients cheese1;
Ingredients mayo1;
Ingredients ham1;
Ingredients bacon1;
Ingredients lettuce1;
Ingredients tomatoes1;
Ingredients egg1;
Ingredients topBun1;

//images, floats, and booleans oh my!
PImage pinkKitchen;
PImage bottomBun;
PImage spinach;
PImage patty;
PImage cheese;
PImage mayo;
PImage ham;
PImage bacon;
PImage lettuce;
PImage tomatoes;
PImage egg;
PImage topBun;
PImage guyFieri;
PImage gordonHappy;
PImage gordonShock;
PImage gordonAngry;
PImage fieriGasp;
PImage fieriWise;
PImage fieriBurgers;
PFont font;
float speed=20; //speed of player
boolean caught;
boolean moveRight= false;
boolean moveLeft= false;
boolean canHit = true;
boolean titleScreen;
boolean badEnd;
boolean goodEnd;

void setup () {
  size(550, 730);

  minim = new Minim(this);
  soundPlayer = minim.loadFile("hellsKitchen.mp3");
  soundPlayer.play();
  input = minim.getLineIn();

//juuust loadin' up all them juicy ingredients and such
  pinkKitchen = loadImage("pinkKitchen.jpg");
  bottomBun = loadImage("bottomBun.png");
  spinach = loadImage("spinach.png");
  patty = loadImage("patty.png");
  cheese = loadImage("cheese.png");
  mayo = loadImage("mayo.png");
  ham = loadImage("ham.png");
  bacon = loadImage("bacon.png");
  lettuce = loadImage("lettuce.png");
  tomatoes = loadImage("tomatoes.png");
  egg = loadImage("egg.png");
  topBun = loadImage("topBun.png");  
  guyFieri = loadImage("guyFieri.png");
  gordonHappy = loadImage("gordonHappy.png");
  gordonShock = loadImage("gordonShock.gif");
  fieriGasp = loadImage("fieriGasp.png");
  fieriWise = loadImage("fieriWise.jpg");
  gordonAngry = loadImage("gordonAngry.jpg");
  fieriBurgers = loadImage("fieriBurgers.jpg");
 
//had to put numbers after each of these names so they wouldn't conflict with the image files with the same name
  player = new Player();
  spinach1 = new Ingredients(spinach);
  patty1 = new Ingredients(patty);
  cheese1 = new Ingredients(cheese);
  mayo1 = new Ingredients(mayo);
  ham1 = new Ingredients(ham);
  bacon1 = new Ingredients(bacon);
  lettuce1 = new Ingredients(lettuce);
  tomatoes1 = new Ingredients(tomatoes);
  egg1 = new Ingredients(egg);
  topBun1 = new Ingredients(topBun);

  titleScreen = true;
}

void draw() {

  if (keyPressed) titleScreen = false; //this action takes you out of the title screen
 
 //before the game starts
  if (titleScreen == true) {
    background (255);
    image (guyFieri, width-477, height-636, 800*.6, 1065*.6);
    textAlign(CENTER);
    fill(#FF553B);
    textSize(45);
    text("TOP CHEF SIMULATOR!!!", 272, 87);
    textSize(22);
    text("PRESS ANY KEY", 125, 498);
    textSize(22);
    text("TO START", 126, 563);
    textSize(22);
    text("CATCHING INGREDIENTS!", 148, 625);
    image (bottomBun,31, 337, 207, 76);
    image (spinach, 31, 305, 207, 76);
    image (patty, 31, 274, 207, 76);
    image (cheese, 31, 272, 207, 76);
    image (mayo, 31, 256, 207, 76);
    image (ham, 31, 249, 207, 76);
    image (bacon, 31, 227, 207, 76);
    image (lettuce, 31, 204, 207, 76);
    image (tomatoes, 31, 189, 207, 76);
    image (egg, 31, 173, 207, 76);
    image (topBun, 31, 122, 207, 76);
  }

//once the game starts
  if (titleScreen == false) {
    soundPlayer.close();
    image (pinkKitchen, 0, 0, 550, 730); //this is the background during the gameplay
    //hitBun();
    reachBottom();
    player.display();
    player.move();

    //here's where all the magic happens. (a.k.a. stuff falls down and you catch it)
    if (topBun1.y1>player.y && topBun1.x>player.x-80 && topBun1.x < player.x+80) {
      topBun1.move();
      goodEnd = true;
    } else if (egg1.y1>player.y && egg1.x>player.x-60 && egg1.x < player.x+60) {
      egg1.move();
      topBun1.displayTopbun();
      topBun1.spawn();
    } else if (tomatoes1.y1>player.y && tomatoes1.x>player.x-60 && tomatoes1.x < player.x+60) {
      tomatoes1.move();
      egg1.displayEgg();
      egg1.spawn();
    } else if (lettuce1.y1>player.y && lettuce1.x>player.x-60 && lettuce1.x < player.x+60) {
      lettuce1.move();
      tomatoes1.displayTomatoes();
      tomatoes1.spawn();
    } else if (bacon1.y1>player.y && bacon1.x>player.x-60 && bacon1.x < player.x+60) {
      bacon1.move();
      lettuce1.displayLettuce();
      lettuce1.spawn();
    } else if (ham1.y1>player.y && ham1.x>player.x-60 && ham1.x < player.x+60) {
      ham1.move();
      bacon1.displayBacon();
      bacon1.spawn();
    } else if (mayo1.y1>player.y && mayo1.x>player.x-60 && mayo1.x < player.x+60) {
      mayo1.move();
      ham1.displayHam();
      ham1.spawn();
    } else if (cheese1.y1>player.y && cheese1.x>player.x-60 && cheese1.x < player.x+60) {
      cheese1.move();
      mayo1.displayMayo();
      mayo1.spawn();
    } else if (patty1.y1>player.y && patty1.x>player.x-60 && patty1.x < player.x+60) {
      patty1.move();
      cheese1.displayCheese();
      cheese1.spawn();
    } else if (spinach1.y1>player.y && spinach1.x>player.x-60 && spinach1.x < player.x+60) {
      spinach1.move();
      spinach1.spawn();
      patty1.displayPatty();
      patty1.spawn();
    } else {
      spinach1.displaySpinach();
      spinach1.spawn();
    }

//this is the end screen if you WIN
    if (goodEnd == true) {
      background (255);
      image (fieriBurgers, 62, 33, 3000/7, 1687/7);
      image (gordonHappy, 19, 291, 511, 338);
      textSize(52);
      text("I'M IMPRESSED...", 279, 680);
    }

//this is the end screen if you LOSE
    if (badEnd == true) {
      background (0);
      image (gordonAngry, 25, 47, 500, 333);
      image (fieriGasp, 25, 414, 500, 282);
    }
  }
}

//lets the player move side to side
void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      moveRight = true;
    } else if (keyCode == LEFT) {
      moveLeft = true;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      moveRight = false;
    } else if (keyCode == LEFT) {
      moveLeft = false;
    }
  }
}

//if any ingredient falls past the height, you get the bad ending (lose)
void reachBottom() {
  if (spinach1.y1 > height - 20) {
    badEnd = true;
  }
  if (patty1.y1 > height - 20) {
    badEnd = true;
  }
  if (cheese1.y1 > height - 20) {
    badEnd = true;
  }
  if (mayo1.y1 > height - 20) {
    badEnd = true;
  }
  if (ham1.y1 > height - 20) {
    badEnd = true;
  }
  if (bacon1.y1 > height - 20) {
    badEnd = true;
  }
  if (lettuce1.y1 > height - 20) {
    badEnd = true;
  }
  if (lettuce1.y1 > height - 20) {
    badEnd = true;
  }
  if (tomatoes1.y1 > height - 20) {
    badEnd = true;
  }
  if (egg1.y1 > height - 20) {
    badEnd = true;
  }
  if (topBun1.y1 > height - 20) {
    badEnd = true;
  }
}

//classes
class Player {
  int l;
  float x;
  float y;
  String move;

  Player() {
    l = 1;
    x = 225;
    y = 606;
  }

  void display() {
    image (bottomBun, x, y, 201/2, 70/2);
  }

  void move() {
    if (moveRight && x < 445) //restricts how far to the right the player can move
    {
      x += speed;
    }
    if (moveLeft && x > 5) //restricts how far to the left the player can move
    {
      x -= speed;
    }
  }
}


class Ingredients {
  float x;
  float y1;
  int l;
  int s;

  Ingredients(PImage tempImg) {
    l = 0;
    x = int(random(100, 400)); //this determines how far from the last ingredient, the next ingredient will spawn
    y1 = 0;
    s = 7; //affects speed that the ingredient falls at
  }

  void displaySpinach() {
    image (spinach, x, y1, 201/2, 70/2);
    y1 = y1 + s; //makes ingredient fall
  }
  void displayPatty() {
    image (patty, x, y1, 201/2, 70/2);
    y1 = y1 + s; //makes ingredient fall
    s+=.5;
  }
  void displayCheese() {
    image (cheese, x, y1, 201/2, 70/2);
    y1 = y1 + s; //makes ingredient fall
    s+=1;
  }
  void displayMayo() {
    image (mayo, x, y1, 201/2, 70/2);
    y1 = y1 + s; //makes ingredient fall
    s+=1.5;
  }
  void displayHam() {
    image (ham, x, y1, 201/2, 70/2);
    y1 = y1 + s; //makes ingredient fall
    s+=2;
  }
  void displayBacon() {
    image (bacon, x, y1, 201/2, 70/2);
    y1 = y1 + s; //makes ingredient fall
    s+=2.5;
  }
  void displayLettuce() {
    image (lettuce, x, y1, 201/2, 70/2);
    y1 = y1 + s; //makes ingredient fall
    s+=3;
  }
  void displayTomatoes() {
    image (tomatoes, x, y1, 201/2, 70/2);
    y1 = y1 + s; //makes ingredient fall
    s+=3.5;
  }
  void displayEgg() {
    image (egg, x, y1, 201/2, 70/2);
    y1 = y1 + s; //makes ingredient fall
    s+=4;
  }
  void displayTopbun() {
    image (topBun, x, y1, 201/2, 70/2);
    y1 = y1 + s; //makes ingredient fall
    s+=4.5;
  }


//spawning action with random x locations
  void spawn() {
    for (int i = 0; i< l; i++)
    { 
      y1 = 0;
      x = int(random(5, 445)); //this makes ingredients spawn at random places
      canHit = true;
    }
  }

//allows player to move
  void move() {
    if (moveRight && x < 445) //restricts how far to the right the player can move
    {
      x += speed;
    }
    if (moveLeft && x > 5) //restricts how far to the left the player can move
    {
      x -= speed;
    }
  }
}