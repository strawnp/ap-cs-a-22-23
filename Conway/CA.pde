public class CA {
  private Cell[][] current;

  public CA(int x, int y) {
    current = new Cell[x][y];

    for (int i = 0; i < current.length; i++) {
      for (int j = 0; j < current[i].length; j++) {
        current[i][j] = new Cell(j, i);
      }
    }
  }

  public void run() {
    renderCells();
    calculateNextGeneration();
  }

  private void renderCells() {
    for (int i = 0; i < current.length; i++) {
      for (int j = 0; j < current[i].length; j++) {
        current[i][j].render();
      }
    }
  }

  private void calculateNextGeneration() {
    Cell[][] next = new Cell[current.length][current[0].length];
    
    for (int i = 0; i < current.length; i++) {
      for (int j = 0; j < current[i].length; j++) {
        int neighbors = countLivingNeighbors(i, j);
        if (current[i][j].isAlive()) {
          if (neighbors == 2 || neighbors == 3) {
            next[i][j] = new Cell(j, i, true);
          } else {
            next[i][j] = new Cell(j, i, false);
          }
        } else {
          if (neighbors == 3) {
            next[i][j] = new Cell(j, i, true);
          } else {
            next[i][j] = new Cell(j, i, false);
          }
        }
      }
    }

    current = next;
  }

  private int countLivingNeighbors(int r, int c) {
    int count = 0;

    // upper-left
    if (r >= 1 && c >= 1 && current[r - 1][c - 1].isAlive()) {
      count++;
    }
    // top
    if (r >= 1 && current[r - 1][c].isAlive()) {
      count++;
    }
    // upper-right
    if (r >= 1 && c < current[0].length - 1 && current[r - 1][c + 1].isAlive()) {
      count++;
    }
    // left
    if (c >= 1 && current[r][c - 1].isAlive()) {
      count++;
    }
    // right
    if (c < current[0].length - 1 && current[r][c + 1].isAlive()) {
      count++;
    }
    // lower-left
    if (r < current.length - 1 && c >= 1 && current[r + 1][c - 1].isAlive()) {
      count++;
    }
    // lower
    if (r < current.length - 1 && current[r + 1][c].isAlive()) {
      count++;
    }
    // lower-right
    if (r < current.length - 1 && c < current[0].length - 1 && current[r + 1][c + 1].isAlive()) {
      count++;
    }

    return count;
  }
}
