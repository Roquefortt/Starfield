//your code here
NormalParticle [] particle;

void setup()
{
	//your code here
	size(500, 500);
	//background((int)(Math.random() * 50)+146,(int)(Math.random() *50)+146,(int)(Math.random() *50)+146);

	particle = new NormalParticle [200];
	for(int i = 0; i < particle.length; i++)
	{
		particle[i] = new NormalParticle();
	}

	//particle[150] = new OddballParticle();
}

void draw()
{
	//your code here
	background(20);

	for(int i = 0; i < particle.length; i++)
	{
		particle[i].show();
		particle[i].move();
	}
}

class NormalParticle
{
	//your code here
	double x, y, speed, angle;
	int myColor;

	NormalParticle()
	{
		x = 250;
		y = 250;
		speed = (Math.random()*3);
		angle = (Math.random()*8);
		//angle = (Math.random()*8);
		myColor = color((int)(Math.random()*256));
	}

	void move()
	{
		x = x + Math.cos(angle)*speed;
		y = y + Math.sin(angle)*speed;
	}

	void show()
	{
		noStroke();
		fill(myColor, (int)(Math.random()*256), (int)(Math.random()*256));
		ellipse((float)x, (float)y, 5, 5);
	}
}

interface Particle
{
	//your code here
	public void show();
	public void move();
}

class OddballParticle implements Particle //uses an interface
{
	//your code here
	int x, y;

	OddballParticle()
	{
		x = 250;
		y = 250;
	}

	public void show()
	{
		fill(250, 0, 0);
		ellipse((float)x, (float)y, 7, 7);
	}

	public void move()
	{
		//x = x + Math.cos(angle)*speed;
		//y = y + Math.sin(angle)*speed;
	}
}

class JumboParticle //uses inheritance
{
	//your code here
}
