// Shift class for every freelanceData data point
class Shift
{
  String shift; // -- shift number
  int map; // -- map difficulty / 6
  float rating; // -- rotationRating
  float evp, hazard; // -- EVP & Hazard level

  int paint; // -- paintedWalls
  boolean won, king, kWon; // -- win/loss, kingWave, kingWaveWon

  float quote, eggs; // -- quota eggs; // -- eggs collected

  boolean team; // -- new team
  int checkG, checkA, block; // -- checked game, checked app, blocked

  PVector shiftCoords = new PVector(0, 0); // <-- holds upper/lower bounds of EVP & HazardLevel / where to draw


  /** TBA:
   roationRating,PaintedWalls,won,KingWave,
   kingWaveWon,quota,eggsCollected, waitedForNewTeammates
   checkedPerformanceInGame,checkedPerformanceInApp,blocked
   **/

  // -- constructor to instantiate new shift and initialise its records
  Shift(String shiftNumber, int mapLVL, float rotaRating, float evpLVL, float hazardLVL, int paintWalls,
    boolean win, boolean kingWave, boolean kingWin, float quota, float eggsCollected, boolean newTeam, int checkGame, int checkApp, int blocked)
  {
    shift = shiftNumber;
    map = mapLVL;
    rating = rotaRating;

    evp = evpLVL;
    hazard = hazardLVL;
    paint = paintWalls;

    won = win;
    king = kingWave;
    kWon = kingWin;

    quote = quota;
    eggs = eggsCollected;

    team = newTeam;
    checkG = checkGame;
    checkA = checkApp;
    block = blocked;
  }

  // -- Shift methods

  // -- storeShift
  void storeShift()
  {
  }

  // -- draw position of data point with shiftCoords x and y
 

  // -- evp lvl, length of map difficulty,y + map difficulty
  void drawBase(float yPos)
  {
    // -- 'base' rectangle
    fill(255);
    rect(0, yPos+1, 200, 10);
  }

  void drawMap(float yPos)
  {
    // -- mapDifficulty
    fill(255, 0, 0);
    rect(0, yPos +1, map*10, 10);
  }

  void drawRota(float yPos)
  {
    // -- rota rating
    fill(0, 255, 0);
    rect(map*10, yPos+1, rating*10, 10);
  }


  void drawPaint(float yPos)
  {
    // -- paintedWalls
    fill(0, 0, 255);
    rect(map*10+ rating*10, yPos+1, paint*10, 10);
  }

  void drawCheckG(float yPos)
  {
  // -- checkGame
  fill(100, 123, 134);
  rect(map*10 + rating * 10 + paint*10, yPos + 1, checkG*10, 10);
  }

  void drawCheckA(float yPos)
  {
    fill(105,247,246);
    rect(map*10 + rating * 10 + paint*10 + checkG*10, yPos + 1, checkA*10, 10);
  }

}
