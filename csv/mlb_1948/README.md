# MLB Stats

I chose 1948, the first year that an integrated team won the World Series.
It also just happens that the team was the *[Cleveland Indians][cle]*. Really
you can get any year at [Baseball-reference.com][ref] for your own use!

 -- PJ

The stats can be found at:

- [Batting CSV][batting] (**[original data][ref-batting]**)
  ([batting column explanations][exp-batting])
- [Pitching CSV][pitching] (**[original data][ref-pitching]**)
  ([pitching column explanations][exp-batting])
- [Team Standings CSV][standings] (**[original data][ref-standings]**)
  ([team standings column explanations][exp-standings])

---

#### Batting and Pitching Columns

- **Name**: Player Name
  + `*` means LHP or LHB (left-handed),
  + `#` means switch hitter (both left- and right-handed),
  + `+` can mean HOFer (Hall-of-Famer).
- **Age**: Player’s age at midnight of June 30th of that year
- **Lg**: League (AL: American League, NL: National League)
- **G**: Games Played or Pitched

#### Batting Columns Explanations

- **PA**: Plate Appearances (When available, we use actual plate appearances
  from play-by-play game accounts. Otherwise estimated using
  `AB + BB + HBP + SF + SH`, which excludes catcher interferences.)
- **AB**: At Bats
- **R**: Runs Scored
- **H**: Hits
- **2**B: Doubles Hit
- **3**B: Triples Hit
- **HR**: Home Runs Hit
- **RBI**: Runs Batted In
- **SB**: Stolen Bases
- **CS**: Caught Stealing
- **BB**: Bases on Balls/Walks
- **SO**: Strikeouts
- **BA**: `Hits/At Bats`
- **OBP**: `(H + BB + HBP)/(At Bats + BB + HBP + SF)`
- **SLG**: `Total Bases/At Bats`, or `(1B + 2*2B + 3*3B + 4*HR)/AB`
- **OPS**: `On-Base + Slugging Percentages`
- **OPS**+: `OPS+100*[OBP/lg OBP + SLG/lg SLG - 1]` (Adjusted to the player’s
  ballpark(s))
- **TB**: Total Bases `Singles + 2 x Doubles + 3 x Triples + 4 x Home Runs`
- **GDP**: Double Plays Grounded Into (Only includes standard 6-4-3, 4-3, etc.
  double plays.)
- **HBP**: Times Hit by a Pitch.
- **SH**: Sacrifice Hits (Sacrifice Bunts)
- **Pos Summary**: Positions Played (The positions either followed by the games
  played at that position or in order of games or innings played.)
    + For a single season, * indicates they played at least 2/3rds of the team
      games there.
    + Positions after / indicate less than ten games played at those positions.
    + For career, a + sign means more than 300 games at that position and a -
      sign means less than 30 games.
    + Positions: 1: Pitcher, 2: Catcher, 3: First Base, 4: Second Base,
      5: Third Base, 6: Short Stop, 7: Left Field, 8: Center Field,
      9: Right Field

### Pitching Columns Explanations

- **W**: Wins
- **L**: Losses
- **W-L%**: Win-Loss Percentage `W / (W + L)`
- **ERA**: Earned-Run Average `9 * ER / IP`
- **GS**: Games Started
- **GF**: Games Finished
- **CG**: Complete Game
- **SHO**: Shutouts (No runs allowed and a complete game.)
- **SV**: Saves
- **IP**: Innings Pitched
- **H**: Hits Allowed
- **R**: Runs Allowed
- **ER**: Earned Runs Allowed
- **HR**: Home Runs Allowed
- **BB**: Bases on Balls/Walks
- **SO**: Strikeouts
- **HBP**: Times Hit by a Pitch.
- **BK**: Balks
- **WP**: Wild Pitches
- **BF**: Batters Faced
- **ERA+**: ERA+ `100*[lgERA/ERA]` (Adjusted to the player’s ballpark(s).)
- **FIP**: Fielding Independent Pitching (This stat measures a pitcher's
  effectiveness at preventing HR, BB, HBP and causing SO
  `(13*HR + 3*(BB+HBP) - 2*SO)/IP + Constantlg`)
  + The constant is set so that each season MLB average FIP is the same as the
    MLB avg ERA
- **WHIP**: `(BB + H)/IP`
- **H9**: `9 x H / IP`
- **HR9**: `9 x HR / IP`
- **BB9**: `9 x BB / IP`
- **SO9**: `9 x SO / IP`
- **SO/W**: `SO/W or SO/BB`

### Team Standings Columns Explanations

- **Rk**: Rank
- **W**: Wins
- **L**: Losses
- **W-L%**: Win-Loss Percentage `W / (W + L)`
- **R**: Runs Scored
- **RA**: Runs Allowed
- **Rdiff**: Run Differential `Runs Scored - Runs Allowed`
- **SOS**: Strength of Schedule (The number of runs per game their opponents are
  better (or worse) than the average team. Average ML team for years with
  inter-league play and just their league for other years.)
- **SRS**: Simple Rating System (The number of runs per game they are better
  (or worse) than the average team. Average ML team for years with inter-league
  play and just their league for other years.
  `SRS = Run Differential (R_diff) + Strength of Schedule (SOS)`)
- **pythWL**: Pythagorean Win-Loss (Expected Win-Loss record based on the number
  of runs scored and allowed by the team.)
- **Luck**: Pythagorean Luck (The difference between the actual W-L and
  Pythagorean W-L.)
- **Home**: Wins and Losses (Record) at home
- **Road**: Wins and Losses (Record) on the road
- **ExInn**: Wins and Losses (Record) for games that went in to Extra Innings
- **1Run**: Wins and Losses (Record) for games that were decided by a single run
- **vRHP**: Wins and Losses (Record) for games where the opposing pitcher was
  right-handed
- **vLHP**: Wins and Losses (Record) for games where the opposing pitcher was
  left-handed
- **≥.500**: Wins and Losses (Record) for games where the opposing team's final
  record was above %50
- **<.500**: Wins and Losses (Record) for games where the opposing team's final
  record was under %50

<!-- Links -->

[cle]:           http://en.wikipedia.org/wiki/1948_Cleveland_Indians_season
[batting]:       mlb_1948_batting.csv
[pitching]:      mlb_1948_pitching.csv
[standings]:     mlb_1948_team_standings.csv
[ref]:           http://www.baseball-reference.com
[ref-batting]:   http://www.baseball-reference.com/leagues/MLB/1948-standard-batting.shtml
[ref-pitching]:  http://www.baseball-reference.com/leagues/MLB/1948-standard-pitching.shtml
[ref-standings]: http://www.baseball-reference.com/leagues/MLB/1948-standings.shtml
[exp-batting]:   #batting-columns-explanations
[exp-pitching]:  #pitching-columns-explanations
[exp-standings]: #team-standings-columns-explanations
