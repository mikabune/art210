int count = 0;
Sprite s;
void setup()
{
  size(800,600);
  s = new Sprite(50,150,120,200);
  s.velocity.x=2;
  String[] files = {"sprite_1.svg","sprite_2.svg"};
  s.addAnimation(new Animation(files));
  String[] files1 = {"sprite_1a.svg","sprite_2a.svg"};
  s.addAnimation(new Animation(files1));
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  s.update();
  s.check();
  s.display();
}
