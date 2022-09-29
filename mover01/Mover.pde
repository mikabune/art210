class Mover
{
  PVector pos = new PVector(0,0);
  PVector speed = new PVector(1,1);
  PVector acc = new PVector (0,0);
  
  Mover()
  {
    
  }
  
  void show()
  {
    circle(this.pos.x, this.pos.y, 30);
  }
  
  void update()
  {
    PVector mouse = new PVector(mouseX,mouseY);
    this.acc = PVector.sub(mouse, this.pos);
    this.acc.normalize();
    this.acc.mult(0.3);
    this.speed = this.speed.add(this.acc);
    this.pos = this.pos.add(this.speed);
  }
  
  void check()
  {
    this.speed.limit(10);
    if(this.pos.x > width) this.pos.x = 0;
    if(this.pos.x < 0) this.pos.x = width;
    if(this.pos.y > height) this.pos.y = 0;
    if(this.pos.y < 0) this.pos.y = height;
  }
}
