void setup() {
  size(600, 600);
  background(0);
  fill(255);
  textAlign(CENTER, CENTER);
}

void draw() {
  
}

void keyPressed() {
  text(str(key), mouseX, mouseY); // key is the actual key pressed
}
