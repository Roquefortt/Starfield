//your code here
void setup()
{
	//your code here
	size(400, 400);
}

void draw()
{
	//your code here
}

class NormalParticle
{
	//your code here
	double x, y, speed, angle;
	int myColor;

	NormalParticle()
	{
		x = 200;
		y = 200;
		speed = Math.cos(2.03) * 8.25;
		angle = Math.sin(2.03) * 8.25;
		//myColor = color(Math.random()*256);
	}

	void move()
	{
		x = x + Math.cos(angle)*speed;
	}

}

interface Particle
{
	//your code here
}

class OddballParticle //uses an interface
{
	//your code here
}

class JumboParticle //uses inheritance
{
	//your code here
}

