Mover m = new Mover();

void setup ()
{
  size(800,600);
  m.pos.x=width/2;
  m.pos.y=height/2;
}

void draw()
{
  background(255);
  m.update();
  m.check();
  m.show();
}
