class Sq
{
 float d = 30;                   //size
 float xpos = 0;                 //position x 
 float ypos = 0;                 //position y
 boolean isBlack = false;        //color
 
 Sq(float _x, float _y, float _d)
  {
    this.xpos = _x;
    this.ypos = _y;
    this.d = _d;
  }
  
  void clicked(float x, float y)
  {
      if(
        x > this.xpos 
          && 
        x < this.xpos+this.d
          &&
        y > this.ypos
          &&
        y < this.ypos+this.d
          
      )
      {
        this.isBlack =  !this.isBlack;  //false=true
      }
  }
  
  void show()
  {
     if(this.isBlack)
     {
     fill(color(0,0,0));
     }
     else
     {
     fill(color(255,255,255));
     }
     square(this.xpos, this.ypos, this.d);
  }
}
