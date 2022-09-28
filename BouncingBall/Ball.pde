public class Ball {
  private int x;
  private int y;
  private int diam;
  
  private float r;
  private float g;
  private float b;

  private float velX;
  private float velY;

  private float acc;

  public Ball() {
    this.x = width / 2;
    this.y = height / 2;
    this.velX = random(-10, 10);
    this.velY = random(-10, 10);
    this.diam = 42;
    this.acc = 1;
    changeColor();
  }

  public void render() {
    fill(r, g, b);
    noStroke();
    ellipse(x, y, diam, diam);
  }

  public void update() {
    this.x += this.velX;

    if (this.x < diam / 2) {
      this.x = diam / 2;
      this.changeColor();
      this.accelerate();
      this.velX *= -1;
    } else if (this.x > width - diam / 2) {
      this.x = width - diam / 2;
      this.changeColor();
      this.accelerate();
      this.velX *= -1;
    }

    this.y += this.velY;

    if (this.y < diam / 2) {
      this.y = diam / 2;
      this.changeColor();
      this.accelerate();
      this.velY *= -1;
    } else if (this.y > height - diam / 2) {
      this.y = height - diam / 2;
      this.changeColor();
      this.accelerate();
      this.velY *= -1;
    }
  }

  public void accelerate() {
    this.velX *= this.acc;
    this.velY *= this.acc;
  }
  
  public void changeColor() {
    this.r = random(256);
    this.g = random(256);
    this.b = random(256);
  }
}
