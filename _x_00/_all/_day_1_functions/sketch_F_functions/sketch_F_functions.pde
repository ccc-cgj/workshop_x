void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  background(0);
  
  int mx = mouseX;
  int my = mouseY;
  
  fill(255, 0, 0);
  rect(mx - 50, my - 50, 50, 50);
  fill(0, 255, 0);
  rect(mx, my - 50, 50, 50);
  fill(0, 0, 255);
  rect(mx, my, 50, 50);
  fill(255, 255, 255);
  rect(mx - 50, my, 50, 50);
}
