public class Game {
  private Player p1;
  private Player p2;
  private Ball b;
  
  public Game() {
    p1 = new Player(10, 10, 'w', 's');
    p2 = new Player(width - 30, height - 90, 'i', 'k');
    b = new Ball();
  }
  
  public void run(float dt) {
    println(dt);
    background(40, 45, 52);
    
    //textSize(72);
    //textAlign(CENTER, CENTER);
    //stroke(255);
    //text("Hello Pong!", width / 2, height / 2);
    
    p1.update(dt);
    p2.update(dt);
    b.update(dt);
    
    p1.render();
    p2.render();
    b.render();
  }
  
}
