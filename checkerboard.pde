void setup()
{
 size(800,800); 
}

void draw()
{
  int count = 0;
  for(int y = 0; y < height; y = y + (height/8))
  {
   for(int x = 0; x < width; x = x + (width/8))
   {
     count = count + 1;
     if(count % 2 > 0)
     {
     fill(color(0,0,0));
     }
     else
     {
     fill(color(255,255,255));
     }
     square(x,y,width/8);
  }
  count = count + 1;
 } 
}
