class Sprite
{
  Animation[] ani;  //array of animation classes
  int nAni = 0;     //numbe of animations in the sprite
  int currentAni = 0;
  PVector location = new PVector(0,0);
  PVector velocity = new PVector(0,0);
  PVector reg = new PVector(0,0);
  float boxx = 10;
  float boxy = 30;

  Sprite(float xreg, float yreg, float bx, float by)
  {
    this.ani = new Animation[10];
    this.reg.x=xreg;
    this.reg.y=yreg;
    this.boxx = bx;
    this.boxy = by;
  }
  
  void addAnimation(Animation a)
  {
    if(this.nAni < 10)
    {
    this.ani[this.nAni]=a;
    this.ani[this.nAni].w = this.boxx;
    this.ani[this.nAni].h = this.boxy; // bounding box
    this.nAni = this.nAni + 1;
    }
  }

  void update()
  {
    this.location.add(this.velocity);
  }

  void display()
  {
    pushMatrix();
      translate(this.location.x,this.location.y);
      //noStroke();
      //fill(0,200,255);
      //circle(0,0,10);
      translate(-this.reg.x,-this.reg.y);
      //fill(color(0,100,250,20));
      //rect(0,0,boxx,boxy);
      if(this.nAni > 0) this.ani[this.currentAni].display();
    popMatrix();

  }

  void check()
  {
    if(this.location.x > (width/2)+this.reg.x)       //left screen on right
    {
    this.velocity = this.velocity.mult(-1);
    this.currentAni = 1; 
    }
    if (this.location.x < -((width/2)+this.reg.x)) //left screen on left
    {
    this.velocity = this.velocity.mult(-1);
    this.currentAni = 0; 
    }
  }

}
