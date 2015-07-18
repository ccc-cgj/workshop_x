void setup() {
  size(600, 600);
}

void draw() {
  background(0);

  fill(255);

  textAlign(mouseX < width / 2 ? LEFT : RIGHT, mouseY < height / 2 ? TOP : BOTTOM);
  text("(" + str(mouseX) + ", " + str(mouseY) + ")", mouseX, mouseY);
}
