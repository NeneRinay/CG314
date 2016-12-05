class Scenes {
  int scene;
  float x;
  float y;
  float size;
  color theColor;
  PImage img;


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
    rect (20,20,20,20,30);
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