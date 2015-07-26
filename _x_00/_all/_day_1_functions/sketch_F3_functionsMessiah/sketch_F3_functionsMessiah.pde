void setup() {
  size(800, 600);
  noStroke();
}

void drawPatternAroundPoint(int px, int py) {
  fill(255, 0, 0);
  rect(px - 50, py - 50, 50, 50);
  fill(0, 255, 0);
  rect(px, py - 50, 50, 50);
  fill(0, 0, 255);
  rect(px, py, 50, 50);
  fill(255, 255, 255);
  rect(px - 50, py, 50, 50);
}

void draw() {
  background(0);
  
  int mx = mouseX;
  int my = mouseY;
  
  drawPatternAroundPoint(mx, my);
}

/*

void draw() {
  background(0);
  
  int mx = mouseX;
  int my = mouseY;
  
  drawPatternAroundPoint(mx - 100, my - 100);
  drawPatternAroundPoint(mx - 100, my + 100);
  drawPatternAroundPoint(mx + 100, my - 100);
  drawPatternAroundPoint(mx + 100, my + 100);
}

*/
