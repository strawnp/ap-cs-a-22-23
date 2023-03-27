public class Cell {
  private boolean isAlive;
  private int x;
  private int y;
  
  public Cell(int x, int y) {
    this.x = x;
    this.y = y;
    
    if (Math.random() < 0.55) {
      isAlive = false;
    } else {
      isAlive = true;
    }
  }
  
  public Cell(int x, int y, boolean isAlive) {
    this.x = x;
    this.y = y;
    this.isAlive = isAlive;
  }
  
  public void render() {
    if (isAlive) {
      fill(0);
    } else {
      fill(255);
    }
    rect(x * 8, y * 8, 8, 8);
  }
  
  public boolean isAlive() {
    return this.isAlive;
  }
}
