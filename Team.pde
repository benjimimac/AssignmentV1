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

  //home fields
  int homePoints;
  int homeGoalsFor;
  int homeGoalsAgainst;
  int homeWins;
  int homeLoses;
  int homeDraws;

  //away fields
  int awayPoints;
  int awayGoalsFor;
  int awayGoalsAgainst;
  int awayWins;
  int awayLoses;
  int awayDraws;

  //constructor method
  Team(boolean home, String teamName, int homeScore, int awayScore) {
    if (home) {
      this.teamName = teamName;
      goalsFor = homeScore;
      goalsAgainst = awayScore;
      goalDifference = goalsFor - goalsAgainst;
      homeGoalsFor = homeScore;
      homeGoalsAgainst = awayScore;

      if (homeScore > awayScore) { //if the home team won
        //general
        points = 3;
        wins = 1;
        loses = 0;
        draws = 0;
        
        //home
        homePoints = 3;
        homeWins = 1;
        homeLoses = 0;
        homeDraws = 0;
        
        //away
        awayPoints = 0;
        awayGoalsFor = 0;
        awayGoalsAgainst = 0;
        awayWins = 0;
        awayLoses = 0;
        awayDraws = 0;
      }//end if()
      else if (homeScore < awayScore){ //if the home team lost
        //general
        points = 0;
        wins = 1;
        loses = 1;
        draws = 0;
        
        //home
        homePoints = 0;
        homeWins = 0;
        homeLoses = 1;
        homeDraws = 0;
        
        //away
        awayPoints = 0;
        awayGoalsFor = 0;
        awayGoalsAgainst = 0;
        awayWins = 0;
        awayLoses = 0;
        awayDraws = 0;
      }//end else if()
      else{  //if the home team drew
        //general
        points = 1;
        wins = 0;
        loses = 0;
        draws = 1;
        
        //home
        homePoints = 1;
        homeWins = 0;
        homeLoses = 0;
        homeDraws = 1;
        
        //away
        awayPoints = 0;
        awayGoalsFor = 0;
        awayGoalsAgainst = 0;
        awayWins = 0;
        awayLoses = 0;
        awayDraws = 0;
      }//end else()
      
    }//end if()
    else {
      this.teamName = teamName;
      goalsFor = awayScore;
      goalsAgainst = homeScore;
      awayGoalsFor = awayScore;
      awayGoalsAgainst = homeScore;
    }//end else()
  }//end League() method

  //editHomeTeam method
  void editHomeTeam(int homeScore, int awayScore) {
  }

  //editAwayTeam() method
  void editAwayTeam() {
  }//end editAwayTeam() Method
}//end League class