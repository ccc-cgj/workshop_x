float rx = 0;
float arx = 0;
int idle = 0;
float lmouseX = 0.0f;

void setup() {
  size(800, 600, P3D);
  // stroke(0);
  fill(0);
  textMode(SHAPE);
  textFont(createFont("sans", 128, true));
  textAlign(CENTER, CENTER);
  textSize(256);
}

void draw() {
  background(255);
  translate(width / 2, height / 2, 0);
  rotateX(QUARTER_PI);
  rotateY(rx);
  text("spinner", 0, 0);
  
  rx += arx;
  arx *= 0.5f;
  
  boolean move = true;
  
  if (mouseX == pmouseX) {
    if (++idle > 1) {
      idle = 1;
      move = false;
      lmouseX = mouseX;
    }
  } else {
    idle = 0;
  }
  
  if (move) {
    arx += ((mouseX - width / 2) / 100.0f - rx) / 10.0f;
  } else {
    arx = -rx / 10.0f;
  }
}
