float angle = 0;

void setup ()
{
  size (800,800);
}
void draw()
{
  translate(width/2, height/2);
  
  strokeWeight(20);
  stroke(color(0,0,0));
  circle(0,0,700);
  
  pushMatrix();
    rotate(radians(angle));
    line(0,0,0,-300); //longhand
  popMatrix();  
  
  pushMatrix();
    rotate(radians(angle/12));
    stroke(color(0,0,0));
    line(0,0,0,-200);  //shorthand
  popMatrix();
  
  pushMatrix();
    rotate(radians(angle*5));
    strokeWeight(10);
    line(0,0,0,-300);
  popMatrix();
    
  
  strokeWeight(20);
  circle(0,0,40);
  
  angle = angle + 0.1;
}
