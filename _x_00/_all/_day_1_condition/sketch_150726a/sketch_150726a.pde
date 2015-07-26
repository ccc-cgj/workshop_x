void setup()
{
  background(185);
  size(755,655);
}

int[] quadrant;

void draw()
{
  if(mouseX>width/2 && mouseY>height/2)
  {
    line(mouseX,mouseY,width/2,height/2);
    return;
  }else
  {
    background(230);
  }
  line(mouseX,mouseY,width/2,height/2);
}
