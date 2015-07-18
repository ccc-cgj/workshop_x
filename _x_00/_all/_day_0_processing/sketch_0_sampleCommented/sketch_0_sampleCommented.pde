void setup() {                  // RUN THE FOLLOWING CODE ONCE
  size(400, 150);               // set window size
  textAlign(LEFT, CENTER);      // set text alignment
}

void draw() {                   // KEEP RUNNING THE FOLLOWING CODE
  background(255);              // clear the screen to white
  fill(0);                      // use black to draw further shapes
  text("yo", 50, 70);           // draw some text
  line(48, 82, mouseX, 82);     // draw a line
}
