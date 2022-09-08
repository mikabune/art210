class Planet
{
 float dist = 100;     //a property
 float angle = 0.0;
 float speed = 1.0;
 float size = 50.0;
 color col = color(255,255,255);
 
 Planet(float _dist)    //a method
 {
   this.dist=_dist;
 }
 
 void show()
 {
  pushMatrix();
    rotate(radians(this.angle*this.speed));
    translate(this.dist,0);
    noStroke();
    fill(this.col);
    circle(0,0,this.size);
  popMatrix();
  this.angle = this.angle + this.speed;
 }
 
}
