class Vehicle { 

  PImage imgvehicle;
  int counter;
  String vehicle;
  int vehicle_xpos;
  int vehicle_ypos;
  int endcount = 1;

  Vehicle() {
  }
  void update(String vehicle) {
    image(imgvehicle, vehicle_xpos, vehicle_ypos);
    counter = int(vehicle);
    vehicle_xpos = vehicle_xpos + counter;
  }

  void checkEnd() {
  }
}

