// Rinay Apostolopoulos hw#11
// INSTRUCTIONS: Press ANY KEY to break the video more than it already is.
// the video is 10 minutes long, i advise you don't watch the whole thing.


import processing.video.*;
Movie video;

void setup() {
  //size(480, 360); //this does literally nothing
  //size(500, 360); //what the fuck
  size(481, 361); //what the fuuuuck x2
  
  video = new Movie(this, "colorVideo.mp4");
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
  //      int theIndex2 = x + 1 + y * height;
  //      float b1 = brightness(video.pixels[theIndex]);
  //      float b2 = brightness(video.pixels[theIndex2]);
  //      float diff = abs(b1 - b2);
  //      pixels[theIndex] = color(diff);
  //    }
  //  }
  //}

  //if (keyPressed) {
  //  video.loadPixels();
  //  for (int x = 1; x<width; x++) {
  //    for (int y = 1; y<height; y++) {
  //      int theIndex = x + y * height;
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
        int theIndex = x + y * height;
        float r = red(video.pixels[theIndex]);
        float g = green(video.pixels[theIndex]);
        float b = blue(video.pixels[theIndex]);
        pixels[theIndex] = color(r, g, b);
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