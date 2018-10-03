void setup()
{
  size(500,500);
	noLoop();
}
void draw()
{
  int sum = 0;
	background(255,255,204);
  for(int y = 0; y <= 440; y = y+65)
  {
    for(int x = 0; x <= 440; x = x+65)
    {
      Die bob = new Die(x,y);
      bob.show();
      sum = sum + bob.num;
    }
  }
  fill(50);
  textSize(22);
  text("total = " + sum, 100,475);
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX,myY,num;
	Die(int x, int y) //constructor
	{
		myX = x;
    myY = y;
    roll();
    
	}
	void roll()
	{
    num = (int)(Math.random()*6)+1;
	}
	void show()
	{
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		rect(myX, myY, 60, 60, 7);
    if (num == 1)
    {
      ellipse(myX + 30,myY + 30, 10, 10);
      
    }else if (num ==2)
    {
      ellipse(myX + 15,myY + 15, 10, 10);
      ellipse(myX + 45,myY + 45, 10, 10);
    }else if (num == 3)
    {
      ellipse(myX + 15,myY + 15, 10, 10);
      ellipse(myX + 30,myY + 30, 10, 10);
      ellipse(myX + 45,myY + 45, 10, 10);
    }else if (num == 4)
    {
      ellipse(myX + 15,myY + 15, 10, 10);
      ellipse(myX + 45,myY + 15, 10, 10);
      ellipse(myX + 45,myY + 45, 10, 10);
      ellipse(myX + 15,myY + 45, 10, 10);
    }else if (num == 5)
    {
      ellipse(myX + 15,myY + 15, 10, 10);
      ellipse(myX + 45,myY + 15, 10, 10);
      ellipse(myX + 30,myY + 30, 10, 10);
      ellipse(myX + 45,myY + 45, 10, 10);
      ellipse(myX + 15,myY + 45, 10, 10);
    }else if (num == 6)
    {
      ellipse(myX + 15,myY + 15, 10, 10);
      ellipse(myX + 15,myY + 30, 10, 10);
      ellipse(myX + 15,myY + 45, 10, 10);
      ellipse(myX + 45,myY + 15, 10, 10);
      ellipse(myX + 45,myY + 30, 10, 10);
      ellipse(myX + 45,myY + 45, 10, 10);
    }	
}
}
