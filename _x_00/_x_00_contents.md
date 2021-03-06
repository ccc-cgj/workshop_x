#_x_00

hi jerry and matthew, this is only for a test.

#overview

this is the test version of the contents we will be doing on our first workshop if successful. this is named `workshop_x` because it is for external audience.

**open up Processing now** because you'll be seeing a lot of sample code.

the contents are:

0. introduction
  * what is Processing?
1. baysicks
  * the interface
  * `setup()` and `draw()`
  * drawing shapes
  * coordinates and colors
2. intermediates
  * `mouseX`, `mouseY`: interaction with mouse
  * `mouseClicked()` and `keyPressed()`: further interaction
3. wrap-up

#more in detail

##introduction

###what is Processing?

pulled from [processing.org](http://processing.org)

> Processing is a programming language, development environment, and online community. Since 2001, Processing has promoted software literacy within the visual arts and visual literacy within technology. Initially created to serve as a software sketchbook and to teach computer programming fundamentals within a visual context, Processing evolved into a development tool for professionals. Today, there are tens of thousands of students, artists, designers, researchers, and hobbyists who use Processing for learning, prototyping, and production.

it's essentially a tool for making visual fancy programs with which users can interact.

the most we will be doing in this workshop is teaching people how to make simple yet fun interactive programs with Processing.

**need more sample code and examples of artists' works here.**

##baysicks

###the interface

open up Processing and you'll see a few buttons and a big area for typing text (code, actually).

copy and paste this code into the big text area and click the run button, the first one of the six buttons on the top.

```Processing
void setup() {
  size(400, 150);
  textAlign(LEFT, CENTER);
}

void draw() {
  background(255);
  fill(0);
  text("yo i'm running some Processing code", 50, 70);
  line(48, 82, mouseX, 82);
}
```

see some text and a line that follows your mouse on one end? good, now you're successfully running a Processing sketch!

to end the program, click the stop button, the one next to the run button.

you can also press <kbd>command</kbd> + <kbd>r</kbd> to run the program. closing the running program automatically stops the program.

###`setup()` and `draw()`

now look at the code you just ran. here it is again.

```Processing
void setup() {
  size(400, 150);
  textAlign(LEFT, CENTER);
}

void draw() {
  background(255);
  fill(0);
  text("yo i'm running some Processing code", 50, 70);
  line(48, 82, mouseX, 82);
}
```

when you click run or press <kbd>command</kbd> + <kbd>r</kbd>, Processing reads through your code and make a program according to the code you wrote. then it runs this program, which is what you just see, a window with some text and a line. we call this program-making process **compilation**. a program that compiles is called a **compiler**.

actually, Processing converts your code into Java, another programming language, and makes the Java compiler compile the converted code into a Java program.

you can see how this code is made up of two parts, `setup()` and `draw()`. 

to simplify, Processing works according to what you put in `setup()` and `draw()`.

when you run the program, whatever is inside `setup()` is run once. then whatever is inside `draw()` is run indefinitely many times until the program ends.

to sort of translate what that code was to English:

```Processing
void setup() {					// RUN THE FOLLOWING CODE ONCE
  size(400, 150);				// set window size
  textAlign(LEFT, CENTER);		// set text alignment
}

void draw() {					// KEEP RUNNING THE FOLLOWING CODE
  background(255);				// clear the screen to white
  fill(0);						// use black to draw further shapes
  text("yo", 50, 70);			// draw some text
  line(48, 82, mouseX, 82);		// draw a line
}
```

in each line of code, whatever's after `//` is the comment. it's ignored by the compiler, so you can add notes and comments to your code.

usually you do setup jobs in `setup()`, as the name suggests. by convention, `size()` should be used here to set up the window size.

you use `draw()` for things you need to do continuously. to get a better understanding of how `draw()` runs continuously, try putting `background(255);` from `draw()` into `setup()` right after `textAlign(...);`. run it and what do you find?

move around your mouse and you should find the line not so responsive to your mouse as it was before. this is because the background is not cleared to white before every time you draw things to the window as it was before, so the newly drawn line looks overlapping with the previously drawn lines.

###drawing shapes

replace everything with the following and run. you should see some shapes drawn to the screen.

```Processing
void setup() {
	size(600, 600);
}

void draw() {
	background(255);

	stroke(0);
	fill(128);

	rect(20, 20, 100, 40);
	ellipse(300, 300, 100, 100);
	line(100, 500, 500, 100);
}
```

look at the code enclosed by the braces `{ ... }` in `setup()` and `draw()`. every line of code follows this format:

```some_name(parameter_0, parameter_1, parameter_2, ...);```

this is a **function call**. with this format, we are calling the function `some_name` while passing information (`parameter_0`, `parameter_1`, `parameter_2`) to it.

**a function does something.** for example, look at `background(255);`. this calls the function `background()` and passes a number `255` to it. `background()` clears the screen to a certain color, and to determine what color to fill the screen it requires a number input. we thusly pass `255` to it as the required input.

**note that** a number has only a numerical meaning bound to it. what a number means as a parameter depends entirely on the function it is passed to. for example, the number `128` can mean "128 pixels wide" to the function `size()`, but it can mean "the color grey" to the function `background()`.

let's look at these functions.

the function `size()` sets the window size. it can take 2 number inputs respectively the desired width and height of the window in pixels. so `size(600, 600)` sets the window size to 600x600 pixels.

the function `background()` clears the screen to a color. it can take 1 number input (actually up to 4, but we'll come to that later). to `background()`, the number `255` means the color white. so `background(255)` clears the screen to white.

the function `stroke()` sets the stroke color of the shapes drawn after it is called. it can take 1 number input (again, actually up to 4). to `stroke()`, the number `0` means the color black. so `stroke(0)` sets the stroke color to black.

the function `fill()` sets the fill color of the shapes drawn after it is called. as you might have guessed, `128` is the color grey. now you should know what this line of code does.

the function `rect()` draws a rectangle to the window. it takes 4 number inputs x, y, w and h. by default, (x, y) will be the coordinates of the top-left corner of the rectangle, and w, h will be respectively the width and height of the rectangle.

the function `ellipse()` draws an ellipse to the window. it takes 4 number inputs x, y, w and h. w and h are the width and height of the ellipse. (x, y) will by defualt be the coordinates of the center of the ellipse.

the function `line()` draws a line to the window. it takes 4 number inputs x0, y0, x1 and y1. it draws a line from (x0, y0) to (x1, y1).

let's look at few more sample codes. try running them:

```Processing
void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  
  noStroke();
  fill(0);
  
  rect(200, 150, 50, 100);
  rect(350, 150, 50, 100);
  rect(150, 350, 50, 50);
  rect(400, 350, 50, 50);
  rect(200, 400, 200, 50);
}
```

```Processing
void setup() {
  size(600, 600);
}

void draw() {
  background(192);
  
  noFill();
  
  stroke(255);
  ellipse(150, 150, 200, 200);
  
  stroke(128);
  ellipse(300, 300, 200, 200);
  
  stroke(0);
  ellipse(450, 450, 200, 200);
}
```

```Processing
void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  
  stroke(255);
  
  line(100, 100, 500, 100);
  line(100, 125, 450, 150);
  line(100, 150, 400, 200);
  line(100, 175, 350, 250);
  line(100, 200, 300, 300);
  line(100, 225, 250, 350);
  line(100, 250, 200, 400);
  line(100, 275, 150, 450);
  line(100, 300, 100, 500);
}
```

in your code, set the window size to 500x400 and the background color to white.

now try drawing the following shapes onto the window!

* 80x60 rectangle with grey fill and black stroke.
* ellipse with center (400, 200), black fill, no stroke.
* 10 lines with black stroke.

###coordinates and colors

in cartesian coordinates the x-axis goes right and the y-axis goes up.

in Processing, the y-axis goes down. the origin (0, 0) is at the top-left corner of the window.

this program below adds a label near your mouse that tells you the coordinates of your mouse on the window.

```Processing
void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  
  fill(255);
  
  textAlign(mouseX < width / 2 ? LEFT : RIGHT, mouseY < height / 2 ? TOP : BOTTOM);
  text("(" + str(mouseX) + ", " + str(mouseY) + ")", mouseX, mouseY);
}
```

colors are represented in numbers. this works in 4 ways: greyscale, greyscale with alpha, RGB, RGB with alpha.

* with 1 number, color is represented by greyscale. this number ranges from 0 (black) to 255 (white).
* with another number, this new number represents the opacity of the greyscale color, ranging from 0 (transparent) to 255 (opaque).
* with 3 numbers, color is represented by RGB (Red, Green, Blue). each color component ranges from 0 to 255.
* with another number, this new number again represents the opacity of the RGB color.

in fact, a greyscale color (_n_) is equivalent to an RGB color (_n_, _n_, _n_).

it can at first be hard to understand the RGB representation. play with this program and you might know more.

```Processing
sampleCode
```

##intermediates

###`mouseX`, `mouseY`: interaction with mouse

Processing is meant to be interactive. let us add some interaction with the mouse.

we will begin with this program.

```Processing
void setup() {
  size(600, 400);
}

void draw() {
  background(255);
  line(100, 100, 500, 100);
}
```

you can see a line drawn onto the window. since `line(...)` is in `draw()`, it should be redrawn constantly but we don't really see this ever being redrawn even once after the line shows up. this is because the line redrawn always connect the same points, because we specified actual numbers for the coordinates in the `line()` function. `100` and `500` are **literals**; the number `100` means `100` only, and this meaning never changes. because literals have constant meanings, they are called **constants**.

`line(100, 100, 500, 500)` can only mean _"draw a line from (100, 100) to (500, 100)"_. this isn't really exciting. let's try to make the line respond to the mouse.

now rewrite that `line(...)` to this:

```Processing
  line(100, 100, mouseX, 100);
```

this means _"draw a line from (100, 100) to (mouseX, 100)"_. now we don't know what the redrawn lines will look like because we have no idea what the value of `mouseX` is! the value of `mouseX` can be `0`, can be `100`, or can change over time. as opposed to **constants**, `mouseX` is a **variable**, since the value is changeable.

so what does `mouseX` mean here? Processing updates the value of `mouseX` to the x-position of the mouse coordinates on the window before each time the contents of `draw()` are run. when the program is running, `mouseX` is replaced with the actual value it represents. so in a sense, this code means:

```Processing
  line(100, 100, mouseX, 100);
  // draw a line from (100, 100) to (mouseX, 100) where mouseX is the x-position of the mouse coordinates.
```

run the code and you should see the horizontal line following your mouse.

now, how do we make the line follow the mouse not only in the x-position but also in the y-position? we can use `mouseY` which, as you might have guessed, has the value updated by Processing to the y-position of the mouse coordinates.

replace `line(...)` with this and run:

```Processing
  line(100, 100, mouseX, mouseY);
```

you can play around with some previous examples and some we offer in the .zip folder.

remember `mouseX` and `mouseY` are just numbers. they are not necessarily limited to specify coordinates - try using them for choosing color!

##`mouseClicked()` and `keyPressed()`: further interaction

we can now make the programs react to mouse positions. however, sometimes we need to react to specific actions, such as a mouse click or a key press. these are known as **events**. when you click the mouse in a running Processing program, the event _"mouse is clicked"_ is sent to the program, and the program will react upon receiving this event.

we can define how the program reacts by writing an **event listener** for a specific event we wish the program to react to. let us take this event for example.
we can write an event listener for the mouse-click event in `mouseClicked()`.

writing in `mouseClicked()` is exactly like what we did with `setup()` and `draw()` previously. we start with an empty `mouseClicked()`:

```Processing
void mouseClicked() {
　　// code here...
}
```

and write between the braces.

let's run a program that draws a circle whereever and whenever the mouse is clicked. copy and paste this code then run:

```Processing
void setup() {
  size(600, 600);
  background(255);
  
  noStroke();
}

void draw() {
}

void mouseClicked() {
  fill(mouseX * 255 / width, 192, mouseY * 255 / height);
  ellipse(mouseX, mouseY, 10, 10);
}
```