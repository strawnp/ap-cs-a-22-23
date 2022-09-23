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
    int choice = int(random(8));
    
    if (choice == 0) {
      this.y -= step;
    } else if (choice == 1) {
      this.y -= step;
      this.x += step;
    } else if (choice == 2) {
      this.x += step;
    } else if (choice == 3) {
      this.x += step;
      this.y += step;
    } else if (choice == 4) {
      this.y += step;
    } else if (choice == 5) {
      this.y += step;
      this.x -= step;
    } else if (choice == 6) {
      this.x -= step;
    } else {
      this.x -= step;
      this.y -= step;
    }
    
    this.x = constrain(this.x, 0, width - 32);
    this.y = constrain(this.y, 0, height - 18);
  }
}
