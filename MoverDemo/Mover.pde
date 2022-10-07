public class Mover {
  private PVector location;
  private PVector velocity;
  private PVector acceleration;
  private int radius = 16;
  private int r = 255;
  private int g = 0;
  private int b = 0;
  private float topspeed = 150;
  
  // default, no-argument constructor
  public Mover() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0.001, 0.01);
  }
  
  // parameterized constructor
  public Mover(int maxSpeed) {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(-maxSpeed, maxSpeed), random(-maxSpeed, maxSpeed));
    acceleration = new PVector(0.01, 0.001);
  }
  
  public Mover(int maxSpeed, int radius) {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(-maxSpeed, maxSpeed), random(-maxSpeed, maxSpeed));
    acceleration = new PVector(0.01, 0.01);
    this.radius = radius;
  }
  
  public void setColor(int r, int g, int b) {
    this.r = r;
    this.g = g;
    this.b = b;
  }
  
  public void update() {
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }
  
  public void display() {
    stroke(0);
    fill(r, g, b);
    ellipse(location.x, location.y, radius, radius);
  }
  
  public void checkEdges() {
    if (location.x > width - 8) {
      location.x = 8;
    } else if (location.x < 8) {
      location.x = width - 8;
    }
    
    if (location.y > height - 8) {
      location.y = 8;
    } else if (location.y < 8) {
      location.y = height - 8;
    }
  }
}
