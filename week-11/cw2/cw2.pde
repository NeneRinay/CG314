//video example

import processing.video.*;

Capture video; //Capture is a class


void setup() {
  size(640, 480);
  video = new Capture(this, 640, 480);
  video.start();
}


void draw() {
  background(0);
  
  loadPixels();
  video.loadPixels();
  for (int x = 0; x<width; x++) {
    for (int y=0; y<height; y++) {
      int theIndex = x + y * width;
      float r = random((255 - red(video.pixels[theIndex])));
      float g = random((255 - green(video.pixels[theIndex])));
      float b = (255 - blue(video.pixels[theIndex]));
      pixels[theIndex] = color(r, g, b);
    }
  }
  updatePixels();
  video.updatePixels();
  image(video, 0, 0);
}


void captureEvent(Capture video) {
  video.read();
}