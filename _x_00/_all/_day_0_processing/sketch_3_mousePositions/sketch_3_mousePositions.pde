void setup() {
  size(400, 400);
  stroke(255);
}

void draw() {
  background(0);
  
  line(100, 100, 300, 100);
  line(100, 200, mouseX, 200);
  line(100, 300, mouseX, mouseY);
}
