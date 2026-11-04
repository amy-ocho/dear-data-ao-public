// -- freelanceData map sketch
String[] shifts; // -- array to hold
int[] mapDifficulties; // <-- holds data point radius scale
PVector[] shiftLevels; // <-- holds upper/lower bounds of EVP & HazardLevel

// -- shiftLevel upper/lower bounds
float lowestEVP = 400; // -- x axis
float highestEVP = 640;
float lowestHazardLevel = 223; // -- y axis
float highestHazardLevel = 300;

void setup()
{
  size (800,800);
  String[] freelanceShifts = loadStrings("freelanceData.csv");
  
  // creating arrays for shifts, mapDifficulties, shiftLevels
  shifts = new String[freelanceShifts.length-1]; // <-- length-1 ignores header
  mapDifficulties = new int[freelanceShifts.length-1];
  shiftLevels = new PVector[freelanceShifts.length-1];
  
  // iterating and storing shift, mapDifficulty, and shiftLevel for each freelanceShift
  for (int i=1; i < freelanceShifts.length; i = i+1)
  {
    // split by comma seperation
    String[] stats = split(freelanceShifts[i], ","); //<>//
    shifts[i-1] = stats[0]; //<>//
    mapDifficulties[i-1] = int(stats[1]);
    shiftLevels[i-1] = new PVector(int(stats[3]), int(stats[4]));
  }
}

void draw()
{
  background(0);
  
  // -- drawing egg circles with collected/stored stuff
  for (int i=0; i < shifts.length; i = i +1)
  {
    int mapDifficulty = mapDifficulties[i];
    PVector shiftLevel = shiftLevels[i];
    // scale shift level to canvas w map
    float xPos = map(shiftLevel.x, lowestEVP, highestEVP, 20, width-20);
    float yPos = map(shiftLevel.y, highestHazardLevel, lowestHazardLevel, 20, width-20);
    powerEgg(xPos, yPos, 25);
  }
}
  
