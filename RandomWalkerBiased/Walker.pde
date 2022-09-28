public class Walker {
  private int x;
  private int y;
  private int step = 5;
  
  public Walker() {
    this.x = width / 2;
    this.y = height / 2;
  }
  
  public void display() {
    int r = int(random(256));
    int g = int(random(256));
    int b = int(random(256));
    int a = int(random(50, 175));
    stroke(r, g, b, a);
    fill(r, g, b, a);
    rect(x, y, 32, 18);
  }
  
  public void step() {
    float r = random(1);
    
    if (r < 0.35) {
      this.y -= step;
    } else if (r < 0.65) {
      this.x += step;
    } else if (r < 0.9) {
      this.y += step;
    } else {
      this.x -= step;
    }
    
    this.x = constrain(this.x, 0, width - 32);
    this.y = constrain(this.y, 0, height - 18);
  }
}
