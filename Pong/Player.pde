public class Player {
  private PVector location;
  private PVector velocity;
  private int score = 0;
  
  public Player(float x, float y) {
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
  }
  
  public void render() {
    fill(255);
    stroke(255);
    rect(location.x, location.y, 20, 80);
  }
}
