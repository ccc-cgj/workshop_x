void setup()
{
  background(255);
  size(455,655);
}

boolean condit(int mx, int my)
{
  return mx<width/2 && my<height/2 ?true:false;
}

void draw()
{
  background(255);
  if(condit(mouseX,mouseY))
  {
    line(mouseX,mouseY,width/2,height/2);
  }else{
    return;
  }
  ;
}
