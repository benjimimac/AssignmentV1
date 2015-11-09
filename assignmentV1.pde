//Update version
//Declare any constants required
final int SEASONS = 10;

ArrayList<ArrayList<Team>> teams = new ArrayList<ArrayList<Team>>();

void setup() {
  size(600, 600);
  background(0, 0, 255);

  //call the loadData() method
  loadData("test.csv");
  
  //test
  println(teams.get(0).get(19).teamName + " - " + teams.get(0).get(19).points + " pts - " + teams.get(0).get(19).goalsFor + " goals - " + teams.get(0).get(19).wins + " wins - " + teams.get(0).get(19).loses + " loses - " + teams.get(0).get(19).draws + " draws");
  println(teams.get(2).get(8).teamName + " - " + teams.get(2).get(8).points + " pts - " + teams.get(2).get(8).goalsFor + " goals - " + teams.get(2).get(8).wins + " wins - " + teams.get(2).get(8).loses + " loses - " + teams.get(2).get(8).draws + " draws");
  
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

      

      //create two int variables that store the inex of the current teams - default is -1
      int homeTeamIndex = -1;
      int awayTeamIndex = -1;

      //create objects if needed or add data to existing objects
      //if (teams.get(i).size() > 0) {
        for (int k = 0; k < teams.get(i).size(); k++) {
          if (leagueValues[0].equals(teams.get(i).get(k).teamName)) {
            homeTeamIndex = k;
          }//end if()
          
          if (leagueValues[1].equals(teams.get(i).get(k).teamName)) {
            awayTeamIndex = k;
          }//end if()
          
        }//end inner inner for()
        
        if(homeTeamIndex < 0){
          teams.get(i).add(new Team(leagueValues));
        }//end if()
        else{
          teams.get(i).get(homeTeamIndex).editTeam(leagueValues);
        }//end else()     
        
    }//end inner for()
    
    for(int j = 0; j < 20; j++){
     println(i + 1 + ", " + (j + 1) + ", " + teams.get(i).get(j).teamName); 
    }
    
  }//end for()
}