ArrayList<Particle> particles;

void setup() {
  size(1000,1000);
  noStroke();
  
  // initialize set of particles
  particles = new ArrayList<Particle>();
  for (int i = 0; i < 100; i++) {
    particles.add(new Particle(random(1), random(1)));
  }
}

void draw() {
  background(0);
  // render and update all particles
  for (Particle p : particles) {
    p.render();
    p.update();
  }
}