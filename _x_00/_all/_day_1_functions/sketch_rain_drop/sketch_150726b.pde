FloatList xs;
FloatList ys;
FloatList vxs;
FloatList vys;
IntList bounceCounts;

void setup() {
  size(600, 400);
  
  xs = new FloatList();
  ys = new FloatList();
  vxs = new FloatList();
  vys = new FloatList();
  bounceCounts = new IntList();
  
  for (int iter = 0; iter != 1000; ++iter) {
    xs.append(random(width));
    ys.append(0);
    vxs.append(random(20) / 10.0 - 1);
    vys.append(random(10) / 20.0);
    bounceCounts.append(1);
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i != xs.size(); ++i) {
    float x = xs.get(i);
    float y = ys.get(i);
    float vx = vxs.get(i);
    float vy = vys.get(i);
    int bounceCount = bounceCounts.get(i);
    
    line(x, y, x, y + 10);
    
    xs.set(i, xs.get(i) + vx); // x = x + vx;
    ys.set(i, ys.get(i) + vy);
    
    vys.set(i, vys.get(i) + 1);
    
    if (y > height) {
      if (bounceCount > 0) {
        vys.set(i, vys.get(i) * -0.5);
        bounceCounts.set(i, 0);
      } else {
        xs.set(i, random(width));
        ys.set(i, 0);
        vxs.set(i, random(20) / 10.0 - 1);
        vys.set(i, random(1) + 0.1);
        bounceCounts.set(i, 1);
      }
    }
  }
}
