void setup ()
{
  size(800,800);
  rect(0,0,100,100);
  int count = 0;
    for(int x = 0; x < 800; x = x + 100)
    {
      for(int y = 0; y < 800; y = y + 100)
      {
         if((x+y) % 200 > 0)
         {
           fill(color(0,0,0));
         }
         else
         {
           fill(color(255,255,255));
         }
         rect(x,y,100,100);
      }
    }   
}
