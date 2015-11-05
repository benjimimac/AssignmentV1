//Update version
//Declare any constants required
final int SEASONS = 3;
final int ALEAGUE = 20;
final int BLEAGUE = 18;
//final int noOfSeasons = 19;
int bNoOfGames;
int bTotalGames;

//Create ArrayLists to store all the premier league data
//ArrayList<String> pLeagueDates = new ArrayList<String>();
ArrayList<League> pLeagueHomeTeam = new ArrayList<String>();
ArrayList<String> pLeagueAwayTeam = new ArrayList<String>();
ArrayList<Integer> pLeagueHomeScore = new ArrayList<Integer>();
ArrayList<Integer> pLeagueAwayScore = new ArrayList<Integer>();
ArrayList<ArrayList<String>> pLeagueTables = new ArrayList<ArrayList<String>>(); 

  void setup() {
  size(600, 600);
  background(0, 0, 255);
  
  //how many games in a season
  //Britain
  bNoOfGames = (ALEAGUE / 2) * ((ALEAGUE - 1) * 2);
  bTotalGames = bNoOfGames * SEASONS;

  //Load premier league data into an array of Strings
  String[] pLeagueLines = loadStrings("test.csv");
  for (String s : pLeagueLines) {
    //Split each element of the array on "'" into separate arrays 
    String[] pLeagueValues = s.split(",");
    for (int i = 0; i < pLeagueValues.length; i++) {
      //Store the relevant data types into the relevant ArrayLists
      if ( i == 1) {
        pLeagueHomeTeam.add(pLeagueValues[i]);
      } else if (i == 2) {
        pLeagueAwayTeam.add(pLeagueValues[i]);
      } else if (i == 3) {
        //println(pLeagueValues[i]);
        String pScores = pLeagueValues[i];
        String[] tempPScores = pScores.split("-");
        //println("tempPScores is length " + tempPScores.length + " index is " + index++);
        pLeagueHomeScore.add(parseInt(tempPScores[0]));
        pLeagueAwayScore.add(parseInt(tempPScores[1]));
      }
    }
  }


  for (int i = 0; i < pLeagueAwayTeam.size(); i++) {
    println(/*pLeagueDates.get(i) + ", " + */pLeagueHomeTeam.get(i) + ", " + pLeagueAwayTeam.get(i) + ", " + pLeagueHomeScore.get(i) + "-" + pLeagueAwayScore.get(i));
  }
}

void draw() {
}