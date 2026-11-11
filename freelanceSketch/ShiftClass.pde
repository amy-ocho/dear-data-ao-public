// Shift class for every freelanceData data point
class Shift
{
  String shift; // -- shift number
  int map; // -- map difficulty / 6
  float evp, hazard; // -- EVP & Hazard level

  PVector shiftCoords = new PVector(0, 0); // <-- holds upper/lower bounds of EVP & HazardLevel / where to draw

  /** TBA:
   roationRating,PaintedWalls,won,KingWave,
   kingWaveWon,quota,eggsCollected, waitedForNewTeammates
   checkedPerformanceInGame,checkedPerformanceInApp,blocked
   **/

  // -- constructor to instantiate new shift and initialise its records
  Shift(String shiftNumber, int mapLVL, float evpLVL, float hazardLVL)
  {
    shift = shiftNumber;
    map = mapLVL;
    evp = evpLVL;
    hazard = hazardLVL;

  }
  
  // -- Shift methods
  
  // -- storeShift 
  void storeShift()
  {
  }
  
  // -- draw position of data point with shiftCoords x and y
  void draw ()
  {
    fill(255);
    circle(shiftCoords.x, shiftCoords.y, 10);
  }
}
