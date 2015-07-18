void setup() {
    size(600, 600);                  // set window size to 600x600 pixels
}

void draw() {
    background(255);                 // clear screen to white

    stroke(0);                       // set stroke color to black
    fill(128);                       // set fill color to grey

    rect(20, 20, 100, 40);           // draw a 100x40 rectangle starting at (20, 20)
    ellipse(300, 300, 100, 100);     // draw a 100x100 ellipse at center (300, 300)
    line(100, 500, 500, 100);        // draw a line from (100, 500) to (500, 100)
}
