//PIXEL INDEX = x + y * width

PImage myImage;
float factor;

void setup() {
  //size(600, 400);
  size(900, 675);
  myImage = loadImage("myImage.jpg");
}


void draw() {

  loadPixels();
  //for (int i = 0; i<pixels.length; i++) {
  //  pixels[i] = color (255, 0, 0);
  //}

  //this shit's sorta cool
  //for (int x = 0; x<width; x++){
  //  for (int y=0; y<height; y++) {
  //    float r = red(x + y * width);
  //    float g = green(x + y * width);
  //    float b = blue(x + y * width);
  //    pixels[x + y * width] = color(r, g, b);
  //  }
  //}

  //this shit looks particularly cool
  //for (int x = 0; x<width; x++) {
  //  for (int y=0; y<height; y++) {
  //    float distance = dist(x, y, width/2, height/2);
  //    float r = map(distance, 0, 300, 0, 255);
  //    float g = map(mouseY, 0, height, 0, 50);
  //    float b = map(mouseX, 0, width, 0, 100);
  //    pixels[x + y * width] = color(r, g, b);
  //  }
  //}

  //your standard gradient 
  //float r = 255;
  //for (int x = 0; x<width; x++) {
  //  for (int y=0; y<height; y++) {
  //    pixels[x + y * width] = color(r, r/10, 100);
  //  }
  //  r= r - 0.5;
  //}

  //my attempt at somthing. looks cool, dude.
  //float r = 255;
  //for (int x = 0; x<width; x++) {
  //  for (int y = 0; y<height; y++) {
  //    pixels[x + y * width] = color(x, y, r); ///or we can do...
  //    //pixels[x + y * width] = color(y, 200, x);
  //  }
  //  r= r - .4;
  //}

  //regular ferret!!
  //myImage.loadPixels();
  //  for (int x = 0; x<width; x++){
  //    for (int y = 0; y<height; y++) {
  //      int theIndex = x + y * width;
  //      float r = red(myImage.pixels[theIndex]);
  //      float g = green(myImage.pixels[theIndex]);
  //      float b = blue(myImage.pixels[theIndex]);
  //      pixels[theIndex] = color(r, g, b);
  //    }
  //  }

  //do other random shit to the ferret
  //myImage.loadPixels();
  //  for (int x = 0; x<width; x++){
  //    for (int y = 0; y<height; y++) {
  //      int theIndex = x + y * width;
  //      float r = 255 - (red(myImage.pixels[theIndex])) * factor;
  //      float g = 255 - (green(myImage.pixels[theIndex])) * factor;
  //      float b = 255 - (blue(myImage.pixels[theIndex]));
  //      pixels[theIndex] = color(r+-293, g+-278, b+-10);
  //    }
  //  }

  //myImage.loadPixels();
  //  for (int x = 0; x<width; x++){
  //    for (int y = 0; y<height; y++) {
  //      int theIndex = x + y * width;
  //      float r = 255 - (red(myImage.pixels[theIndex])) * factor;
  //      float g = 255 - (green(myImage.pixels[theIndex])) * factor;
  //      float b = 255 - (blue(myImage.pixels[theIndex]));
  //      pixels[theIndex] = color(mouseX+57, mouseY+19, b+10);
  //    }
  //  }

  //do some weird etch a sketch type shit
  myImage.loadPixels();
  for (int x = 0; x<width-1; x++) {
    for (int y = 0; y<height-1; y++) {
      int theIndex = x + y * width;
      int theIndex2 = x + 1 + y * width;
      float b1 = brightness(myImage.pixels[theIndex]);
      float b2 = brightness(myImage.pixels[theIndex2]);
      float diff = abs(b1 - b2);
      pixels[theIndex] = color(diff);
    }
  }

  //this part didn't work
  //myImage.loadPixels();
  //for (int x = 0; x<width-4; x=x+3) {
  //  for (int y = 0; y<height-3; y++) {
  //    int theIndex = x + y * width;
  //    int theIndex2 = x + y + 1 * width;
  //    int theIndex3 = x + y + 2 * width;
  //    //float b1 = brightness(myImage.pixels[theIndex]);
  //    //float b2 = brightness(myImage.pixels[theIndex2]);
  //    //float diff = abs(b1 - b2);
  //    color tempColor = get(x, y);
  //    pixels[theIndex] = color(tempColor);
  //    pixels[theIndex2] = color(tempColor);
  //    pixels[theIndex3] = color(tempColor);
  //  }
  //}


  updatePixels(); 
  myImage.updatePixels();
  factor = factor * 1.001;
}