public class ParticleSystem {
  private ArrayList<Particle> particles;
  private PVector origin;

  public ParticleSystem() {
    particles = new ArrayList<>();
    origin = new PVector(width / 2, 50);
  }
  
  public ParticleSystem(PVector o) {
    particles = new ArrayList<>();
    origin = o.copy();
  }

  public void run() {
    double chance = Math.random();
    if (chance < 0.25) {
      particles.add(new Particle(origin));
    } else if (chance < 0.75) {
      if (chance < 0.65) { 
        particles.add(new SpinningConfetti(origin));
      } else {
        particles.add(new Confetti(origin));
      }
    } else {
      particles.add(new Glitter(origin));
    }

    for (int i = 0; i < particles.size(); i++) {
      Particle p = particles.get(i);
      p.run();

      if (p.isDead()) {
        particles.remove(i);
        i--;
      }
    }
  }
}
