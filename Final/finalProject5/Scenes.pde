class Scenes {
  int scene;
  float x;
  float y;
  float size;
  color theColor;
  PImage img;

  int snowAmount = 100;
  float [] snowX = new float [snowAmount];
  float [] snowY = new float [snowAmount];
  float [] shade = new float [snowAmount];
  float [] diameter = new float [snowAmount];


  //Scenes (PImage tempImg, float tempX, float tempY, float tempSize, color tempColor, int tempScene) {
  //  img= tempImg;
  //  x= tempX;
  //  y=tempY;
  //  size= tempSize;
  //  theColor= tempColor;
  //  scene = tempScene;
  //}

  Scenes (PImage tempImg, int tempScene) {
    img= tempImg;
    scene = tempScene;
  }

  void display() {
    image(img, x, y);
  }

  void nextScene() {
    if (keyPressed) {
      scene = scene + 1;
    }
  }

  void dialogueBox() {
    stroke(255); //white border on box
    strokeWeight(3);
    fill (#1B48BF, 150);
    rect (0, height-height/3, width, height, 30);
    rect (0, 270, width/4.5, 50, 30);
  }

  void snowFall() {
    for (int i = 0; i<snowX.length; i++) { //This whole portion is supposed to be in setup :/
      snowX[i] = random (1, width);
      snowY[i] = random(1, height);
      shade[i] = random (100, 220);
      diameter[i] = random (2, 8);

      //for (int i = 0; i<snowX.length; i++) {
      fill(shade[i]);
      ellipse(snowX[i], snowY[i], diameter[i], diameter[i]);
      snowY[i]+= 0.1;
      if (snowY[i]>height) {
        snowY[i] = 0;
      }
    }
  }
}


void keyPressed() {
  if (key == ' ') {
    spaceCount++;
  }
}


//------------------------------------------------------------------------------

//DRIVE IN THEATRE SCENE (not sure if this does in finalProject or Scenes)

//if (scene == 8 && keyPressed) {
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