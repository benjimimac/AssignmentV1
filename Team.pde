class Team {
  //fields
  //general fields
  String teamName;
  int points;
  int goalsFor;
  int goalsAgainst;
  int goalDifference;
  int wins;
  int loses;
  int draws;

  //constructor method
  Team(String[] leagueValues) {
    //store the elements of leagueValues in appropriate variables
      String homeTeamName = leagueValues[0]; 
      String awayTeamName = leagueValues[1]; 

      //split the last element in the array into a new array - split on "-"
      String[] scores = leagueValues[2].split("-"); 

      //parse the new array into variables of type float
      int homeScore = parseInt(scores[0]); 
      int awayScore = parseInt(scores[1]);
      
      

        
  }//end Team() constructor method

  //editHomeTeam method
  void editTeam(String[] leagueValues) {
  }

  //editAwayTeam() method
  void editAwayTeam() {
  }//end editAwayTeam() Method
}//end League class