class v2 {
  float x, y;
  float vx, vy;

  v2(float cx, float cy) {
    x = cx;
    y = cy;
    vx = 0;
    vy = 0;
  }

  v2 getNormalized() {
    return new v2(x / dist(0, 0, x, y), y / dist(0, 0, x, y));
  }
}

ArrayList<ArrayList<v2>> worms;
FloatList speeds;
FloatList baserads;

// constants
int oto = 10;
int tot = 10;

int mode = 0;

void setup() {
  size(1000, 550);
  background(255);
  
  fill(0);
  text("press C to clear screen.\npress SPACE to change drawing mode.", 20, 20);

  worms = new ArrayList<ArrayList<v2>>();
  speeds = new FloatList();
  baserads = new FloatList();

  for (int ti = 0; ti < oto; ti++) {
    ArrayList<v2> worm = new ArrayList<v2>();

    for (int it = 0; it < tot; it++) {
      worm.add(new v2(width / 2 + cos(it) * it * 10, height / 2 + sin(it) * it * 10));
    }

    worms.add(worm);
    speeds.append(5.0f + random(10.0f));
    baserads.append(5.0f + random(15.0f));
  }
}

void draw() {
  for (int h = 0; h < worms.size (); h++) {
    ArrayList<v2> worm = worms.get(h);
    float speed = speeds.get(h);
    float baserad = baserads.get(h);

    for (int i = 0; i < worm.size (); i++) {
      float rad = baserad + baserad / 4.0f * sin(float(second()) + (float)i / worm.size());

      v2 cv = worm.get(i);
      if (mode == 0) {
        stroke(0);
        fill(255);
        ellipse(cv.x, cv.y, rad * 2, rad * 2);
      }

      cv.x += cv.vx;
      cv.y += cv.vy;

      float f = 0.5f;

      cv.vx *= (1 - f);
      cv.vy *= (1 - f);
      if (i == 0) {
        cv.vx += new v2(mouseX - cv.x, mouseY - cv.y).getNormalized().x * f * speed;
        cv.vy += new v2(mouseX - cv.x, mouseY - cv.y).getNormalized().y * f * speed;
      } else {
        v2 pv = worm.get(i - 1);

        cv.vx += new v2(pv.x - cv.x, pv.y - cv.y).getNormalized().x * f * speed;
        cv.vy += new v2(pv.x - cv.x, pv.y - cv.y).getNormalized().y * f * speed;

        if (mode == 1) {
          stroke(0, 64);
          line(cv.x, cv.y, pv.x, pv.y);
        }
      }

      if (mode == 2 && h > 0) {
        v2 lv = worms.get(h - 1).get(i);

        stroke(0, 64);
        line(cv.x, cv.y, lv.x, lv.y);
      }
    }
  }
}

void keyPressed() {
  if (key == ' ') { 
    mode++;
    mode %= 3;
  } else if (key == 'c') {
    background(255);
  } else if (key == 'p') {
    saveFrame("###.png");
  }
}

