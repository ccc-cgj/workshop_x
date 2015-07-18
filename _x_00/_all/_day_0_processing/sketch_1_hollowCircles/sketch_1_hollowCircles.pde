void setup() {
  size(600, 600);
}

void draw() {
  background(192);

  noFill(); // guess what this function does!

  stroke(255);
  ellipse(150, 150, 200, 200);

  stroke(128);
  ellipse(300, 300, 200, 200);

  stroke(0);
  ellipse(450, 450, 200, 200);
}
