//When we were parsing CSV files, the table class did the split function for us, but we can use split() and splitTokens() to separate long data into an array of words/values.

//PFont f =  createFont("Georgia", 64);
String s = "hello world!";
String d = "It was the best of times, it was the!worst of times.";
String [] words = splitTokens(s, ", !.");
//for (int i = 0; i < words.length; i++) {
//println(words[i]);
float xPos = 10;

void setup() {
  size(800, 460);
  background(0);
  //textFont(f);
  textSize(20);
  text(d, 100, 100);
  text(s, 100, 300);
}

void draw() {


  for (int i = 0; i<s.length(); i++) {
    char c = s.charAt(i);
    fill(random(100, 255));
    textSize(random(12, 48));
    text(c, xPos, height/2);
    xPos += textWidth(c);
  }
}