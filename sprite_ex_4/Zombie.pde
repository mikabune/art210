class Zombie extends Sprite
{
   boolean isJump = false;
  
   Zombie(float xreg, float yreg, float bx, float by)
   {
     super(xreg,yreg,bx,by);
     this.location.x = (-width/2)+100;
     this.location.y = (height/2)-200;
   }
   
   void jump()
   {
     if(!this.isJump)
     {
       this.velocity.y = -8;
       this.acceleration.y = 0.1;
       this.isJump = true;
     }  
   }
   
   void check()
   {
     if(this.location.y > (height/2)-200)
     {
       this.location.y=(height/2)-200;
       this.velocity.y = 0;
       this.acceleration.y = 0;
       this.isJump = false;
     }
     if(this.isJump)
     {
       if(this.velocity.y < 0)
       {
         this.currentAni = 2; //up
       }
       else
       {
         this.currentAni = 3; //down
       }
     }
     else
     {
       this.currentAni = 0; //grounded
     }
   }
}
