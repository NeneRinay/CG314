void setup() {
 size(420, 69);
}
void draw() {
 if (mousePressed) {
 fill(0);
 } else { 
   fill(255);
 }
 ellipse(mouseX, mouseY, 20, 20);
}