String [] words;
int index = 0;


void setup() {
  size(400, 400);
  String [] lines = loadStrings("supernatural.txt");
  String fullText = join(lines, " ");
  words = splitTokens(fullText, ".,!?:");
}


void draw(){
  background(0);
  fill(255);
  textSize(10);
  textAlign(CENTER);
  text(words[index], width/2, height/2);
  //index++;
}