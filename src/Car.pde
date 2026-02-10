class Car {
  // Member Variables (Attributes/Properties)
  color c;
  float x;
  float y;
  float speed;
  boolean r;

  // Constructor (calls to existence)
  Car(color c) {
    this.c = c;
    x = random(width);
    y = random(height);
    speed = random(1, 15);
    int rand = int(random(0, 2));
    if (rand == 0) {
      r = true;
    } else {
      r = false;
    }
  }

  // Member Methods (Functions)
  void display() {
    if (r == true) {
      fill(0);
      rect(x-12, y, 7, 21);
      rect(x+12, y, 7, 21);
      fill(c);
      rectMode(CENTER);
      rect(x, y, 35, 15);
      fill(200);
      rect(x+9, y, 9, 15);
    } else {
      fill(0);
      rect(x-12, y, 7, 21);
      rect(x+12, y, 7, 21);
      fill(c);
      rectMode(CENTER);
      rect(x, y, 35, 15);
      fill(200);
      rect(x-9, y, 9, 15);
    }
  }

  void move() {
    if (r == true) {
      x += speed;
      if (x > width) {
        x = 0;
      }
    } else {
      x = x - speed;
      if (x < 0) {
        x = 0;
      }
    }
  }
}
