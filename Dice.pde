void setup()
{
  size(300,300);
	noLoop();
}
void draw()
{
	background(255);
  Die a = new Die(30,30);
  Die b = new Die(100,30);
  Die c = new Die(170,30);
  Die d = new Die(30,100);
  Die e = new Die(100,100);
  Die f = new Die(170,100);
  Die g = new Die(30,170);
  Die h = new Die(100,170);
  Die i = new Die(170,170);
  
  a.show();
  b.show();
  c.show();
  d.show();
  e.show();
  f.show();
  g.show();
  h.show();
  i.show();
  
  
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
		//your code here
	}
	void show()
	{
		rect(myX, myY, 60, 60, 7);
    System.out.print(num);
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
