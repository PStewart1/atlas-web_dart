/// Calculates the total number of points for each team and returns the winning team,
/// given two maps that represents the number of successful shots
/// for each shot type in a basketball game between [teamA] and [teamB]
int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  
  // teamA's score 
  int aScore;
  // teamB's score
  int bScore;
  // calculate scores, by attributing points to each type of shot made
  aScore = teamA['Free throws']!;
  aScore += teamA['2 pointers']! * 2;
  aScore += teamA['3 pointers']! * 3;

  bScore = teamB['Free throws']!;
  bScore += teamB['2 pointers']! * 2;
  bScore += teamB['3 pointers']! * 3;

  // return results
  if (aScore > bScore)
    return 1;
  else if (aScore < bScore)
    return 2;
  else
    return 0;
}
