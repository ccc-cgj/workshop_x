void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(0);
  
  int m = (mouseX < 100) ? 0 : ((mouseX > 500) ? 255 : (mouseX - 100) * 255 / 400);
  
  textAlign(CENTER);
  
  pushMatrix();
  translate(width / 2, height / 2);
  rotate(200);
  translate(-width / 2, -height / 2);
  fill(96);
  rect(50, 290, 500, 20);
  popMatrix();
  
  translate(0, -25);

  fill(255);
  
  textAlign(LEFT);
  text("greyscale: " + str(m), 101, 100);
  text("greyscale: 255, alpha: " + str(m), 101, 200);
  text("greyscale: " + str(m) + ", alpha: 128", 301, 200);
  text("r: " + str(m) + ", g: 255, b: 255", 101, 300);
  text("r: 255, g: "  + str(m) + ", b: 255", 234, 300);
  text("r: 255, g: 255, b: " + str(m), 367, 300);
  text("r: " + str(m) + ", g: 0, b: 0", 101, 400);
  text("r: 0, g: "  + str(m) + ", b: 0", 234, 400);
  text("r: 0, g: 0, b: " + str(m), 367, 400);
  text("rgb, alpha: " + str(m), 101, 500);
  
  fill(m);
  rect(100, 110, 400, 40);
  
  fill(255, m);
  rect(100, 210, 200, 40);
  fill(m, 128);
  rect(300, 210, 200, 40);
  
  fill(m, 255, 255);
  rect(100, 310, 133, 40);
  fill(255, m, 255);
  rect(233, 310, 133, 40);
  fill(255, 255, m);
  rect(366, 310, 134, 40);
  
  fill(m, 0, 0);
  rect(100, 410, 133, 40);
  fill(0, m, 0);
  rect(233, 410, 133, 40);
  fill(0, 0, m);
  rect(366, 410, 134, 40);
  
  fill(sin(millis() / 1000.0f) * 128 + 128, sin(0.1f + 1.1f * millis() / 1000.0f) * 128 + 128, sin(0.5f + -0.8f * millis() / 1000.0f) * 128 + 128, m);
  rect(100, 510, 400, 40);
}
