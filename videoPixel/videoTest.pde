import processing.video.*;
Movie video;

void setup() {
  //size(480, 320); //dummy
  size(490, 360); //bromance
  

  //video = new Movie(this, "dummy.mp4");
   video = new Movie(this, "bromance.mp4");
  video.loop();
}

void draw() {
  background(0);


  image(video, 0, 0);


  loadPixels();

  //if (keyPressed) {
  //  video.loadPixels();
  //  for (int x = 0; x<width-1; x++) {
  //    for (int y = 0; y<height-1; y++) {
  //      int theIndex = x + y * height;
  //      int theIndex2 = x + 1 + y * width;
  //      float b1 = brightness(video.pixels[theIndex]);
  //      float b2 = brightness(video.pixels[theIndex2]);
  //      float diff = abs(b1 - b2);
  //      pixels[theIndex] = color(diff);
  //    }
  //  }
  //}

  //if (keyPressed) {
  //  video.loadPixels();
  //  for (int x = 0; x<width-1; x++) {
  //    for (int y = 0; y<height-1; y++) {
  //      int theIndex = x + y * width;
  //      int theIndex2 = x + 1 + y * width;
  //      float b1 = brightness(video.pixels[theIndex]);
  //      float b2 = brightness(video.pixels[theIndex2]);
  //      float diff = abs(b1 - b2);
  //      pixels[theIndex] = color(diff);
  //    }
  //  }
  //}

  //if (keyPressed) {
  //  video.loadPixels();
  //  for (int x = 0; x<width; x++) {
  //    for (int y = 0; y<height; y++) {
  //      int theIndex = x + y * width;
  //      float r = 255 - (red(video.pixels[theIndex]));
  //      float g = 255 - (green(video.pixels[theIndex]));
  //      float b = 255 - (blue(video.pixels[theIndex]));
  //      pixels[theIndex] = color(r+-293, g+-278, b+-10);
  //    }
  //  }
  //}

  if (keyPressed) {
    video.loadPixels();
    for (int x = 0; x<width; x++) {
      for (int y = 0; y<height; y++) {
        int theIndex = x + y * width;
        float r = 255 - (red(video.pixels[theIndex]));
        float g = 255 - (green(video.pixels[theIndex]));
        float b = 255 - (blue(video.pixels[theIndex]));
        pixels[theIndex] = color(r+33, g+-2, b+0);
      }
    }
  }


  updatePixels();
  video.updatePixels();



  //image(video, 0, 0);
}

void movieEvent(Movie video) {
  video.read();
}