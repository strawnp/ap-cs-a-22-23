public class Ball {
  private PVector location;
  private PVector velocity;
  private float xSpeed;
  private float ySpeed;
  private PVector acceleration;
  
  public Ball() {
    location = new PVector(width / 2 - 10, height / 2 - 10);
    velocity = new PVector(0, 0);
    xSpeed = random(250, 350);
    ySpeed = random(175, 225);
    acceleration = new PVector(0.01, 0.005);
    randomizeDirections();
  }
  
  private void randomizeDirections() {    
    int xDir = int(random(2));
    int yDir = int(random(2));
    
    if (xDir == 0) {
      xSpeed *= -1;
    }
    
    if (yDir == 0) {
      ySpeed *= -1;
    }
  }  
  
  public void render() {
    fill(255);
    stroke(255);
    rect(location.x, location.y, 20, 20);
  }
  
  public void update(float dt) {
    velocity.x = xSpeed * dt;
    velocity.y = ySpeed * dt;
    location.add(velocity);
    
    if (location.x < 0) {
      location.x = 0;
      xSpeed *= -1;
    } else if (location.x > width - 20) {
      location.x = width - 20;
      xSpeed *= -1;
    }
    
    if (location.y < 0) {
      location.y = 0;
      ySpeed *= -1;
    } else if (location.y > height - 20) {
      location.y = height - 20;
      ySpeed *= -1;
    }
  }
  
  public boolean collides(Player p) {
    return false;
  }
}
