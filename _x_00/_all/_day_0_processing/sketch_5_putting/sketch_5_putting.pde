void setup() {
  size(800, 500);
  background(255);
}

void draw() {
  stroke(0, 64);
  line(pmouseX, pmouseY, mouseX, mouseY);
  stroke(0);
  if (mousePressed) {
    fill(dist(pmouseX, pmouseY, mouseX, mouseY) * 10);
    ellipse((pmouseX + mouseX) / 2, (pmouseY + mouseY) / 2, dist(pmouseX, pmouseY, mouseX, mouseY) * 2 / 3, dist(pmouseX, pmouseY, mouseX, mouseY) * 2 / 3);
  }
}

void keyPressed() {
  background(255);
}
