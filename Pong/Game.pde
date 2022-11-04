public class Game {
  private Player p1;
  private Player p2;
  private Ball b;
  
  public Game() {
    p1 = new Player(10, 10);
    p2 = new Player(width - 30, height - 90);
    b = new Ball();
  }
  
  public void run() {
    background(40, 45, 52);
    p1.render();
    p2.render();
  }
  
}
