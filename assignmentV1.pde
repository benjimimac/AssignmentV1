//Update version
//Declare any constants required
final int SEASONS = 3;

ArrayList<ArrayList<Team>> teams = new ArrayList<ArrayList<Team>>();

void setup() {
  size(600, 600);
  background(0, 0, 255);

  //call the loadData() method
  loadData("test.csv");
}//end setup() method

void draw() {
}//end draw() method

//method to load the data into the program
void loadData(String filename) {
  //open the file and load it into an array of type String
  String[] leagueLines = loadStrings(filename);

  //find out how many games in a season
  int gamesPerSeason = leagueLines.length / SEASONS;

  //use a for loop to iterate through the array
  for (int i = 0; i < SEASONS; i++) {
    //add an outer dimension to the ArrayList
    teams.add(new ArrayList<Team>());
    
    for (int j = gamesPerSeason * i; j < gamesPerSeason + (gamesPerSeason * i); j++) {
      
      //split each element into a new array of type String - split on ","
      String[] leagueValues = leagueLines[j].split(","); 

      //store the elements of leagueValues in appropriate variables
      String homeTeamName = leagueValues[1]; 
      String awayTeamName = leagueValues[2]; 

      //split the last element in the array into a new array - split on "-"
      String[] scores = leagueValues[3].split("-"); 

      //parse the new array into variables of type float
      int homeScore = parseInt(scores[0]); 
      int awayScore = parseInt(scores[1]);

      //create two int variables that store the inex of the current teams - default is -1
      int homeTeamIndex = -1;
      int awayTeamIndex = -1;

      //create objects if needed or add data to existing objects
      //if (teams.get(i).size() > 0) {
        for (int k = 0; k < teams.get(i).size(); k++) {
          if (homeTeamName.equals(teams.get(i).get(k).teamName)) {
            homeTeamIndex = teams.get(i).indexOf(homeTeamName);
          }//end if()
          
          if (awayTeamName.equals(teams.get(i).get(k).teamName)) {
            awayTeamIndex = teams.get(i).indexOf(awayTeamName);
          }//end if()
          
        }//end inner inner for()
        
        if(homeTeamIndex < 0){
          teams.get(i).add(new Team(true, homeTeamName, homeScore, awayScore));
        }//end if()
        else{
          teams.get(i).get(homeTeamIndex).editHomeTeam(homeScore, awayScore);
        }//end else()
        
        
        
      //}//end if()
    }//end inner for()
    
    for(int j = 0; j < 20; j++){
     println(i + 1 + ", " + (j + 1) + ", " + teams.get(i).get(j).teamName); 
    }
    
  }//end for()
}//end loadData() method