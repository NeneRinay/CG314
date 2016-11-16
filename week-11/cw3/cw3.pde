import processing.video.*;
Movie video;

void setup() {
  size(568, 320);
  video = new Movie(this, "smallSmash.MOV");
  video.loop();
}

void draw() {
  background(0);
  loadPixels();
  video.loadPixels();
  for (int x = 0; x<width; x++) {
    for (int y=0; y<height; y++) {
      //float tempX = width - x;
      int theIndex = int(x + y * width);
      float r = (red(video.pixels[theIndex]));
      float g = (green(video.pixels[theIndex]));
      float b = (blue(video.pixels[theIndex]));
      pixels[theIndex] = color(r, g, b);
    }
  }
  updatePixels();
  video.updatePixels();



  //image(video, 0, 0);
}

void movieEvent(Movie video) {
  video.read();
}



//import processing.video.*;

//Movie video;


//void setup() {
//  size(568, 320);
//  video = new Movie(this, "smallSmash.mov");
//  video.play();  //or m.loop();
//}


//void draw() {

//  image(video, 0, 0);

//  loadPixels();
//  video.loadPixels();
//  for (int x = 0; x<width-5; x++) {
//    for (int y=0; y<height-5; y++) {
//      //float x = width - x;
//      int theIndex = (x + y * width);
//      float r = (red(video.pixels[theIndex]));
//      float g = (green(video.pixels[theIndex]));
//      float b = (blue(video.pixels[theIndex]));
//      pixels[theIndex] = color(r, g, b);
//    }
//  }
//  updatePixels();
//  video.updatePixels();
//}


//void movieEvent(Movie video) {
//  video.read();
//}
//}