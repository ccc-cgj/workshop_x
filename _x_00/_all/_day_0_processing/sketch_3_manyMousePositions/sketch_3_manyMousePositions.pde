void setup() {
  size(600, 600);
  fill(255);
  background(0);
}

void draw() {
  translate(pmouseX, pmouseY);
  rotate(atan2(mouseY - pmouseY, mouseX - pmouseX) * 180 / PI);
  scale(dist(pmouseX, pmouseY, mouseX, mouseY) / 10 + 1, dist(pmouseX, pmouseY, mouseX, mouseY) / 10 + 1);
  translate(-pmouseX, -pmouseY);
  fill(255);
  text("abcdefghijklmnopqrstuvwxyz".charAt(floor(random(26))), mouseX, mouseY);
  fill(0, 16);
  rect(0, 0, width, height);
}
