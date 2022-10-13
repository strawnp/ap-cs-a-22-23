public class Car {
  private PVector location;
  private PVector velocity;
  private PVector acceleration;

  public Car() {
    location = new PVector(0, height / 2 - 20);
    velocity = new PVector(0, 0);
    acceleration = new PVector(10.1, 0);
  }

  public void update() {
    location.add(velocity);
    //location.x = constrain(location.x, 0, width - 80);
    if (location.x < -80) {
      location.x = width;
    } else if (location.x > width) {
      location.x = -80;
    }
  }

  public void accelerate() {
    velocity.add(acceleration);
  }

  public void decelerate() {
    velocity.sub(acceleration);
  }

  public void reset() {
    location.x = 0;
    velocity.x = 0;
  }

  public void printInfo() {
    textSize(18);
    text("Pos.: " + location.x, 5, 20);
    text("Vel.: " + velocity.x, 5, 40);
    text("Acc.: " + acceleration.x, 5, 60);
  }

  public void display() {
    fill(175);
    rect(location.x, location.y, 80, 40);

    fill(0);
    rect(location.x + 5, location.y - 5, 20, 10);
    rect(location.x + 5, location.y + 35, 20, 10);
    rect(location.x + 55, location.y - 5, 20, 10);
    rect(location.x + 55, location.y + 35, 20, 10);
  }
}
