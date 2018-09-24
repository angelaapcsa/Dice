void setup()
{
  size(300,300);
	noLoop();
}
void draw()
{
	background(0);
  Die bob = new Die(150,150);
  bob.show();
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
    num = (int)(Math.random()*2)+1;
    
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
      ellipseMode(CENTER);  // Set ellipseMode to CENTER
      fill(100);  // Set fill to gray
      ellipse(myX + 30,myY + 30, 10, 10);  // Draw gray ellipse using CENTER mode
    } 
	}
}
