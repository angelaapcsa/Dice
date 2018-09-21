void setup()
{
  size(300,300)
	noLoop();
}
void draw()
{
	background(0);
  Die bob = new Die();
  bob.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		rect(x, y, 60, 60, 7);
    if (int)((Math.random()*6)+1) 
    {
      
	}
}
