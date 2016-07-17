class Circle {

  //We call Vectors for the location and time
  PVector location;
  PVector time;

  //In the Prey function we give the time and location vectors their initial values
  Circle(PVector time) {
    location = new PVector(width, 0);
    this.time = time;
  }

  //We map the x and y locations according to the time
  void move() {
    location.x = map(noise(time.x), 0, 1, 0, width);
    location.y = map(noise(time.y), 0, 1, 0, height);


    //We want the prey to move forward through the time
    time.x += 0.001;
    time.y += 0.001;
  }

  void display() { //We leave this as empty so that it can be overwritten
    ellipse(location.x, location.y, 100, 100);
  }

  void checkEdges() {

    if (location.x > width) {
      location.x = 0;
    } 
    else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    }  
    else if (location.y < 0) {
      location.y = height;
    }
  }
}

