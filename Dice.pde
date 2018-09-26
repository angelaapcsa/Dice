void setup()
{
  size(500,500);
	noLoop();
}
void draw()
{
	background(255,255,204);
  for(int y = 0; y <= 440; y = y+65)
  {
    for(int x = 0; x <= 440; x = x+65)
    {
      Die bob = new Die(x,y);
      bob.show();
      bob.roll();
    }
  }
  
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
    num = (int)(Math.random()*6)+1;
    
	}
	void roll()
	{
    int sum = 0;
    sum = sum + num;
    System.out.print(" sum : " + sum );
	}
	void show()
	{
		rect(myX, myY, 60, 60, 7);
    System.out.print(num);
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
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
