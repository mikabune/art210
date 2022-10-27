class dog extends Sprite
{
  boolean isJump = false;
  dog(float xreg, float yreg, float bx, float by)
  {
    super(xreg, yreg, bx, by);
    this.location.x = (-width/2)+100;
    this.location.y = (height/2)-100;
  }
  
  void jump()
  {
    if(!this.isJump)
    {
    this.velocity.y = -5;
    this.acceleration.y = 0.1; 
    this.isJump = true;
    }
  }
  
  void check()
  {
    if(this.location.y > (height/2)-100)
    {
      this.location.y=(height/2)-100;
      this.velocity.y = 0;
      this.acceleration.y = 0;
      this.isJump = false;
    }
    if(this.isJump)
    {
      if(this.velocity.y < 0)
      {
      this.currentAni = 2;
      }
    }
    else
    {
      this.currentAni = 0;
    }
  }
}
