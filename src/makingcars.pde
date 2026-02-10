// Alex Zheng | 18 Sept 2025 | Making Cars

Car cat1, cat2;
Car[] cats = new Car [498];

void setup() {
  size(600, 600);
  cat1 = new Car(color(255, 0, 0));
  cat2 = new Car(color(random(255), random (255), random (255)));
  for (int i = 0; i<cats.length; i = i + 1) {

    cats[i] = new Car(color(random(255), random (255), random (255)));
  }
}

void draw() {
  background(255);

  cat1.display();
  cat1.move();
  cat2.display();
  cat2.move();

  for (int i = 0; i<cats.length; i = i + 1) {
    cats[i].display();
    cats[i].move();
  }
}
