public class Cell {
  private int state;
  
  public Cell(int state) {
    this.state = state;
  }
  
  public void flipState() {
    // ternary operator -> condition ? true : false;
    // if (this.state == 1) {
    //   this.state = 0;
    // } else {
    //   this.state = 1;
    // }
    this.state = this.state == 1 ? 0 : 1;
  }
  
  public int getState() {
    return this.state;
  }
}
