import processing.video.*;
import ddf.minim.*;

//video = new Movie(this, "casablancaSmall.mp4");
//video.loop();

//minim = new Minim(this);
//soundPlayer = minim.loadFile("dogWisdom.mp3");
////soundPlayer.play();
//input = minim.getLineIn();

class Theater {
  int scene;


  Theater () {
    //scene = tempScene;
  }



  void driveIn() {
    image(video, 0, 0);

    loadPixels();

    //video.loop();
    //input = minim.getLineIn();

    //soundPlayer.play();

    if (key == '1') {
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

  void driveIn2() {
    //video.stop();
    //video.loop();
    input = minim.getLineIn();
  }
}