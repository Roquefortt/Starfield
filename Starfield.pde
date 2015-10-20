//your code here
Particle [] particle;

void setup()
{
  //your code here
  size(500, 500);
  //background((int)(Math.random() * 50)+146,(int)(Math.random() *50)+146,(int)(Math.random() *50)+146);

  particle = new Particle [200];
  particle[0] = new OddballParticle();
  particle[1] = new OddballParticle();
  particle[2] = new JumboParticle();
  for(int i = 3; i < particle.length; i++)
  {
    particle[i] = new NormalParticle();
  }
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

interface Particle
{
  //your code here
  public void show();
  public void move();
}

class NormalParticle implements Particle
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
    y = y + Math.sin(angle)/speed;
  }

  void show()
  {
    noStroke();
    fill(myColor, (int)(Math.random()*256), (int)(Math.random()*256));
    ellipse((float)x, (float)y, 5, 5);
  }
}

class OddballParticle implements Particle //uses an interface
{
  //your code here
  double  x, y, angle, speed;

  OddballParticle()
  {
    x = 250;
    y = 250;
    
    speed = (Math.random()*3);
    angle = (int)(Math.random()*8);
  }

  public void move()
  {
    x = x + Math.cos(angle)*speed;
    y = y + Math.sin(angle)*speed;
  }

  public void show()
  {
	fill(255);
    ellipse((float)x-8, (float)y+9, 10, 10);
    ellipse((float)x+8, (float)y+9, 10, 10);

    fill(240, 0, 0);
    ellipse((float)x, (float)y, 17, 17);

    if (x > 510 || x < -10 || y > 510 || y < -10)
    {
    	x = 250;
    	y = 250;
    }

  }

}

class JumboParticle implements Particle //uses inheritance
{
  //your code here
  double x, y, angle, speed;

  JumboParticle()
  {
  	x = 250;
  	y = 250;

  	speed = (Math.random()*1);
    angle = (int)(Math.random()*8);
  }

  public void move()
  {
    x = x + Math.cos(angle)*speed;
    y = y + Math.sin(angle)*speed;
  }  

  public void show()
  {
  	fill(100, 240, 40);
  	ellipse((float)x, (float)y, 25, 25);

  	if (x > 510 || x < -10 || y > 510 || y < -10)
    {
    	x = ((int)Math.random()*500);
    	y = ((int)Math.random()*500);
    }

  }
}
