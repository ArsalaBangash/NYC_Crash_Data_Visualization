BufferedReader reader;
String line;
PImage start;
Circle borough_circle;
Circle date_circle;
String borough = "null";
String date = "null";
PImage cell;
PImage zzz;
PImage beer;

Vehicle [] vehicles = new Vehicle [14];  
void setup() {
  print("Hello");

  vehicles[0] =  new Passenger_Vehicle();
  vehicles[1] = new Scooter();
  vehicles[2] = new Livery();
  vehicles[3] = new Fire_Truck();
  vehicles[4] = new Bus();
  vehicles[5] = new Ambulance();
  vehicles[6] = new Bicycle();
  vehicles[7] = new Large_Commerical_Vehicle();
  vehicles[8] = new Small_Commercial_Vehicle();
  vehicles[9] = new Van();
  vehicles[10] = new Pedicab();
  vehicles[11] = new Motorcycle();
  vehicles[12] = new Pickup();
  vehicles[13] = new Taxi();

  cell = loadImage("cell.png");
  zzz = loadImage("zzz.png");
  beer = loadImage("beer.png");

  borough_circle = new Circle(new PVector(50, 100));
  date_circle = new Circle(new PVector(100, 500));

  // When we create the reader, we have the reader read the first line 
  //that contains the headings, so that these headings do not interfere with 
  //the number data later on
  reader = createReader("collisions.csv");
  try {
    line = reader.readLine();
  } 
  catch (IOException e) {
    e.printStackTrace();
    line = null;
  }
  size(1600, 1000);
  start = loadImage("start.png");
}
void draw() {
  frameRate(120);
  background(255);
  strokeWeight(5);
  image(start, 192, 10, 35, 1000);
  image(beer, 800, 900);
  image(zzz, 1000, 900);
  image(cell, 1200, 900);

  try {
    line = reader.readLine();
  } 
  catch (IOException e) {
    e.printStackTrace();
    line = null;
  }
  if (line == null) {
    // Stop reading because of an error or file is empty
    noLoop();
  } else {
    String[] pieces = split(line, TAB);
    String BoroughCode = pieces[0];
    String Precinct = pieces[1];
    String Year = pieces[2];
    String Month = pieces[3];
    String Longitude = pieces[4];
    String Latitude = pieces[5];
    String Street_Address_1= pieces[6];
    String Street_Address_2= pieces[7];
    String Collisions = pieces[8];
    String Persons_Involved = pieces[9];
    String Collisions_With_Injuries = pieces[10];
    String motorists_injured = pieces[11] ;      
    String passengers_injured= pieces[12]   ;
    String cyclists_injured  = pieces[13] ;
    String pedestr_injured = pieces[14];
    String total_injured = pieces[15];
    String  motorists_killed = pieces[16];
    String passengers_killed = pieces[17];
    String  cyclists_killed = pieces[18];
    String pedestr_killed = pieces[19];
    String total_killed = pieces[20];
    String ambulance = pieces[21];
    String  bicycle = pieces[22];
    String  bus = pieces[23];
    String fire_truck = pieces[24];
    String large_com_veh_6_or_more_tires  = pieces[25]   ;  
    String livery_vehicle = pieces[26];
    String  motorcycle = pieces[27];
    String other= pieces[28];
    String passenger_vehicle = pieces[29]; 
    String  pedicab = pieces[30];
    String  pick_up_truck = pieces[31];
    String  scooter = pieces[32];
    String small_com_veh_4_tires= pieces[33];
    String  sport_utility_station_wagon  = pieces[34]  ;
    String  taxi_vehicle = pieces[35];
    String  unknown = pieces[36];
    String  van = pieces[37];
    String aggressive_driving_road_rage = pieces[38];
    String  alcohol_involvement = pieces[39];
    String  backing_unsafel = pieces[40];
    String cell_phone_hand_held  = pieces[41];
    String driver_inattention_distraction = pieces[44]   ;
    String driver_inexperience  = pieces[45];
    String drugs_illegal = pieces[46];
    String eating_or_drinking = pieces[47];
    String err_confusn_ped_bike_other_ped = pieces[48] ;
    String failure_to_keep_right = pieces[49];
    String failure_to_yield_right_of_way = pieces[50]  ;
    String fatigued_drowsy = pieces[51];
    String fell_asleep = pieces[52];
    String following_too_closely = pieces[53];
    String illness = pieces[54];
    String listening_using_headphones = pieces[55];
    String lost_consciousness = pieces[56];
    String other_electronic_device= pieces[57];
    String other_uninvolved_vehicle= pieces[58];
    String outside_car_distraction= pieces[58];
    String passenger_distraction= pieces[59];
    String passing_or_lane_usage= pieces[60];
    String physical_disability  = pieces[61];
    String prescription_medication  = pieces[62];
    String texting  = pieces[63];
    String traffic_control_disregarded  = pieces[64];
    String turning_improperly = pieces[65];
    String unsafe_lane_changing = pieces[66];
    String unsafe_speed = pieces[67];
    String vehicle_vandalism = pieces[67];

    if (BoroughCode == "1") {
      borough = "Manhattan";
    } else if (BoroughCode.equals("2")) {
      borough = "Brooklyn";
    } else if (BoroughCode.equals("3")) {
      borough = "Queens";
    } else if (BoroughCode.equals("4")) {
      borough = "The Bronx";
    } else if (BoroughCode.equals("5")) {
      borough = "Staten Island";
    }

    date = Month + "  /  " + Year;


    vehicles[0].update(passenger_vehicle);
    vehicles[1].update(scooter);
    vehicles[2].update(livery_vehicle);
    vehicles[3].update(fire_truck);
    vehicles[4].update(bus);
    vehicles[5].update(ambulance);
    vehicles[6].update(bicycle);
    vehicles[7].update(large_com_veh_6_or_more_tires);
    vehicles[8].update(small_com_veh_4_tires);
    vehicles[9].update(van);
    vehicles[10].update(pedicab);
    vehicles[11].update(motorcycle);
    vehicles[12].update(pick_up_truck);
    vehicles[13].update(taxi_vehicle);

    vehicles[0].checkEnd();
    vehicles[1].checkEnd();
    vehicles[2].checkEnd();
    vehicles[3].checkEnd();
    vehicles[4].checkEnd();
    vehicles[5].checkEnd();
    vehicles[6].checkEnd();
    vehicles[7].checkEnd();
    vehicles[8].checkEnd();
    vehicles[9].checkEnd();
    vehicles[10].checkEnd();
    vehicles[11].checkEnd();
    vehicles[12].checkEnd();
    vehicles[13].checkEnd();

    fill(0);
    textAlign(CENTER, CENTER);
    text(borough, borough_circle.location.x, borough_circle.location.y);
    text(date, date_circle.location.x, date_circle.location.y);
    noFill();

    borough_circle.move();
    borough_circle.display();
    borough_circle.checkEdges();
    date_circle.move();
    date_circle.display();
    date_circle.checkEdges();


    if (mouseX > 800 && mouseX < 835 && mouseY > 900 && mouseY < 950) {
      if (mousePressed == true) {
      }
    }
    if (mouseX > 1000 && mouseX < 1050 && mouseY > 900 && mouseY < 950) {
      if (mousePressed == true) {
        if (fell_asleep.equals("1") || fatigued_drowsy.equals("1")) { 
          vehicles[0].update(passenger_vehicle);
          vehicles[1].update(scooter);
          vehicles[2].update(livery_vehicle);
          vehicles[3].update(fire_truck);
          vehicles[4].update(bus);
          vehicles[5].update(ambulance);
          vehicles[6].update(bicycle);
          vehicles[7].update(large_com_veh_6_or_more_tires);
          vehicles[8].update(small_com_veh_4_tires);
          vehicles[9].update(van);
          vehicles[10].update(pedicab);
          vehicles[11].update(motorcycle);
          vehicles[12].update(pick_up_truck);
          vehicles[13].update(taxi_vehicle);
        }
      }
    }
    if (mouseX > 1200 && mouseX < 1235 && mouseY > 900 && mouseY < 950) {
      if (mousePressed == true) {
      }
    }
  }
}