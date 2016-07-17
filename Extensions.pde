class Passenger_Vehicle extends Vehicle {

  Passenger_Vehicle() {
    imgvehicle = loadImage ("passengerveh.png");
    vehicle_ypos = 15;
    vehicle_xpos = 192 - imgvehicle.width;
  }
  void checkEnd() {
    if (vehicle_xpos > 1192) {
      vehicle_xpos = 192 - imgvehicle.width;
      endcount += 1;
    }
    text(endcount + "* 1000 vehicles involved", 1500, (vehicle_ypos + 25));
  }
}

class Scooter extends Vehicle {

  Scooter() {
    imgvehicle = loadImage ("scooter.png");
    vehicle_ypos = 65;
    vehicle_xpos = 192 - imgvehicle.width;
  }
  void checkEnd() {
    if (vehicle_xpos > 1192) {
      vehicle_xpos = 192 - imgvehicle.width;
      endcount += 1;
    }
    text(endcount + "* 1000 vehicles involved", 1500, (vehicle_ypos + 25));
  }
}

class Livery extends Vehicle {

  Livery() {
    imgvehicle = loadImage ("livery.png");
    vehicle_ypos = 125;
    vehicle_xpos = 192 - imgvehicle.width;
  }

  void checkEnd() {
    if (vehicle_xpos > 1192) {
      vehicle_xpos = 192 - imgvehicle.width;
      endcount += 1;
    }
    text(endcount + "* 1000 vehicles involved", 1500, (vehicle_ypos + 25));
  }
}

class Fire_Truck extends Vehicle {

  Fire_Truck() {
    imgvehicle = loadImage ("firetruck.png");
    vehicle_ypos = 185;
    vehicle_xpos = 192 - imgvehicle.width;
  }

  void checkEnd() {
    if (vehicle_xpos > 1192) {
      vehicle_xpos = 192 - imgvehicle.width;
      endcount += 1;
    }
    text(endcount + "* 1000 vehicles involved", 1500, (vehicle_ypos + 25));
  }
}

class Bus extends Vehicle {

  Bus() {
    imgvehicle = loadImage ("bus.png");
    vehicle_ypos = 245;
    vehicle_xpos = 192 - imgvehicle.width;
  }

  void checkEnd() {
    if (vehicle_xpos > 1192) {
      vehicle_xpos = 192 - imgvehicle.width;
      endcount += 1;
    }
    text(endcount + "* 1000 vehicles involved", 1500, (vehicle_ypos + 25));
  }
}

class Ambulance extends Vehicle {

  Ambulance() {
    imgvehicle = loadImage ("ambulance.png");
    vehicle_ypos = 305;
    vehicle_xpos = 192 - imgvehicle.width;
  }

  void checkEnd() {
    if (vehicle_xpos > 1192) {
      vehicle_xpos = 192 - imgvehicle.width;
      endcount += 1;
    }
    text(endcount + "* 1000 vehicles involved", 1500, (vehicle_ypos + 25));
  }
}

class Bicycle extends Vehicle {

  Bicycle() {
    imgvehicle = loadImage ("bicycle.png");
    vehicle_ypos = 365;
    vehicle_xpos = 192 - imgvehicle.width;
  }

  void checkEnd() {
    if (vehicle_xpos > 1192) {
      vehicle_xpos = 192 - imgvehicle.width;
      endcount += 1;
    }
    text(endcount + "* 1000 vehicles involved", 1500, (vehicle_ypos + 25));
  }
}

class Large_Commerical_Vehicle extends Vehicle {

  Large_Commerical_Vehicle() {
    imgvehicle = loadImage ("largecomveh.png");
    vehicle_ypos = 425;
    vehicle_xpos = 192 - imgvehicle.width;
  }

  void checkEnd() {
    if (vehicle_xpos > 1192) {
      vehicle_xpos = 192 - imgvehicle.width;
      endcount += 1;
    }
    text(endcount + "* 1000 vehicles involved", 1500, (vehicle_ypos + 25));
  }
}

class Small_Commercial_Vehicle extends Vehicle {

  Small_Commercial_Vehicle() {
    imgvehicle = loadImage ("smallcomveh.png");
    vehicle_ypos = 485;
    vehicle_xpos = 192 - imgvehicle.width;
  }

  void checkEnd() {
    if (vehicle_xpos > 1192) {
      vehicle_xpos = 192 - imgvehicle.width;
      endcount += 1;
    }
    text(endcount + "* 1000 vehicles involved", 1500, (vehicle_ypos + 25));
  }
}

class Van extends Vehicle {

  Van() {
    imgvehicle = loadImage ("van.png");
    vehicle_ypos = 545;
    vehicle_xpos = 192 - imgvehicle.width;
  }

  void checkEnd() {
    if (vehicle_xpos > 1192) {
      vehicle_xpos = 192 - imgvehicle.width;
      endcount += 1;
    }
    text(endcount + "* 1000 vehicles involved", 1500, (vehicle_ypos + 25));
  }
}

class Pedicab extends Vehicle {

  Pedicab() {
    imgvehicle = loadImage ("pedicab.png");
    vehicle_ypos = 605;
    vehicle_xpos = 192 - imgvehicle.width;
  }

  void checkEnd() {
    if (vehicle_xpos > 1192) {
      vehicle_xpos = 192 - imgvehicle.width;
      endcount += 1;
    }
    text(endcount + "* 1000 vehicles involved", 1500, (vehicle_ypos + 25));
  }
}

class Motorcycle extends Vehicle {

  Motorcycle() {
    imgvehicle = loadImage ("motorcycle.png");
    vehicle_ypos = 665;
    vehicle_xpos = 192 - imgvehicle.width;
  }

  void checkEnd() {
    if (vehicle_xpos > 1192) {
      vehicle_xpos = 192 - imgvehicle.width;
      endcount += 1;
    }
    text(endcount + "* 1000 vehicles involved", 1500, (vehicle_ypos + 25));
  }
}

class Pickup extends Vehicle {

  Pickup() {
    imgvehicle = loadImage ("pickup.png");
    vehicle_ypos = 725;
    vehicle_xpos = 192 - imgvehicle.width;
  }

  void checkEnd() {
    if (vehicle_xpos > 1192) {
      vehicle_xpos = 192 - imgvehicle.width;
      endcount += 1;
    }
    text(endcount + "* 1000 vehicles involved", 1500, (vehicle_ypos + 25));
  }
}

class Taxi extends Vehicle {

  Taxi() {
    imgvehicle = loadImage ("taxi.png");
    vehicle_ypos = 785;
    vehicle_xpos = 192 - imgvehicle.width;
  }

  void checkEnd() {
    if (vehicle_xpos > 1192) {
      vehicle_xpos = 192 - imgvehicle.width;
      endcount += 1;
    }
    text(endcount + "* 1000 vehicles involved", 1500, (vehicle_ypos + 25));
  }
}

