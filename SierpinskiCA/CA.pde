public class CA {
  private Cell[] current;
  private ArrayList<Cell[]> history = new ArrayList<>();
  private int offset = 0;

  public CA(int size) {
    if (size % 2 == 0) {
      size++;
    }
    current = new Cell[size];
    for (int i = 0; i < current.length; i++) {
      current[i] = new Cell(0);
    }
    current[current.length / 2].flipState();
    history.add(current);
  }

  public void run() {
    renderList();
    addNewGen();
  }

  private int calculateState(int x, int y) {
   return x ^ y;
  }

  private void addNewGen() {
    // create array to hold next generation
    Cell[] next = new Cell[current.length];
    
    // setting boundaries to off state
    next[0] = new Cell(0);
    next[next.length - 1] = new Cell(0);
    
    // loop over current gen to calculate next gen
    for (int i = 1; i < next.length - 1; i++) {
      int nextState = calculateState(current[i-1].getState(), current[i+1].getState());
      next[i] = new Cell(nextState);
    }
    
    // make my next gen my new current gen
    current = next;
    
    // add new current gen to my history
    history.add(current);
    
    // remove oldest gen if outside the window height
    if (history.size() > height / 2) {
      history.remove(0);
    }
  }

  private void render() {
    for (int i = 0; i < current.length; i++) {
      if (current[i].getState() == 0) {
        fill(255);
      } else {
        fill(0);
      }
      noStroke();
      rect(i * 2, offset, 2, 2);
    }
    offset += 2;
  }

  private void renderList() {
    int listOffset = 0;
    for (Cell[] c : history) {
      for (int i = 0; i < c.length; i++) {
        if (c[i].getState() == 0) {
          fill(255);
        } else {
          fill(0);
        }
        noStroke();
        rect(i * 2, listOffset, 2, 2);
      }
      listOffset += 2;
    }
  }
}
