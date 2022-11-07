public class Player {
  private PVector location;
  private PVector velocity;
  private char upButton;
  private char downButton;
  private int score = 0;
  private final int PADDLE_SPEED = 300;
  
  public Player(float x, float y, char up, char down) {
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    upButton = up;
    downButton = down;
  }
  
  public void render() {
    fill(255);
    stroke(255);
    rect(location.x, location.y, 20, 80);
  }
  
  public void update(float dt) {
    if (keyPressed) {
      if (key == upButton) {
        velocity.y = -PADDLE_SPEED * dt;
      } else if (key == downButton) {
        velocity.y = PADDLE_SPEED * dt;
      }
    }
    location.add(velocity);
    location.y = constrain(location.y, 0, height - 80);
    velocity.mult(0);
  }
}
