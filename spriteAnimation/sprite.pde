int count = 0;
Sprite s;
Sprite g;
void setup()
{
  size(800,600);
  s = new dog(80,150,220,300);
  String[] files = {"sprite_1.svg","sprite_2.svg"};
  s.addAnimation(new Animation(files));
  String[] files1 = {"sprite_1a.svg","sprite_2a.svg"};
  s.addAnimation(new Animation(files1));
  String[] files2 = {"sprite_1jump.svg"};
  s.addAnimation(new Animation(files2));
  
  
  g1 = new Ground(0,0,1000,300);
  g1.location.x = -width/2;
  String[] files4 = {"ground_1.svg"};
  g1.addAnimation(new Animation(files4));
  
  g2 = new Ground(0,0,1000,300);
  g2.location.x = (width/2)+1000;
  g2.addAnimation(new Animation(files4));
  
  g3 = new Ground(0,0,1000,300);
  g3.location.x = (width/2)+1000;
  g3.addAnimation(new Animation(files4));
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  
  
  s.update();
  s.check();
  s.display();
}

 void keyPressed()
  {
    s.jump();
  }
