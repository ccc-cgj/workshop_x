void setup() {
  size(800, 600);
  noStroke();
  background(0);
}

void draw() {
  fill(dist(pmouseX, pmouseY, mouseX, mouseY) * 10); // dist(x0, y0, x1, y1) returns distance between (x0, y0) and (x1, y1) in pixels
  ellipse((pmouseX + mouseX) / 2, (pmouseY + mouseY) / 2, dist(pmouseX, pmouseY, mouseX, mouseY), dist(pmouseX, pmouseY, mouseX, mouseY));
}
