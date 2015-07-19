void setup() {
  size(600, 600);
  background(255);
  stroke(0);
  fill(255);
}

void draw() {
  // draw() is empty!
}

void mousePressed() { // try replacing mousePressed with mouseReleased, mouseMoved and mouseClicked
  ellipse(mouseX, mouseY, 100, 100);
}
