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
  ////void storeShift()
  //{
  //}
  
  // -- draw position of data point with shiftCoords x and y
  void draw ()
  {
    fill(255, 0,0);
    circle(shiftCoords.x, shiftCoords.y, 10);
    
   /** Drawing lines for data points
   line(x1, y1, x2, y2);
   x1 = x-coord of first point
   y1 = y-coord of first point
   x2 = x-coord of second point
   y2 = y-coord of second point
   
   x1 = evp, y2 = hazard level
   y1 = 
   
   xAxis = map(object, lowestEVP(400), highestEVP(640), 20, width-20);
   yAxis = map(object, lowestHL, highestHL, 20, height-20);
   plot = 
   
   x2 and y2 will be distance of 
   
   **/
   
  }
}
