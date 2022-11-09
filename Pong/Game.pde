public class Game {
  private Player p1;
  private Player p2;
  private Ball b;
  private String gameState = "serve";

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

    checkState();

    p1.update(dt);
    p2.update(dt);

    if (gameState.equals("play")) {
      b.update(dt);

      if (b.isOnLeft(p1)) {
        p2.scorePoint();
        b.reset();
        gameState = "serve";
      } else if (b.isOnRight(p2)) {
        p1.scorePoint();
        b.reset();
        gameState = "serve";
      }

      if (b.collides(p1)) {
        b.flipDirection();
      } else if (b.collides(p2)) {
        b.flipDirection();
      }
    }

    p1.render();
    p2.render();
    b.render();

    if (gameState.equals("serve")) {
      renderScores();
    }
  }

  void checkState() {
    if (keyPressed && key == ' ') {
      gameState = "play";
    }
  }

  void renderScores() {
    textSize(96);
    textAlign(CENTER);
    stroke(255);
    text(p1.getScore(), width / 4, 100);
    text(p2.getScore(), 3 * width / 4, 100);
  }
}
