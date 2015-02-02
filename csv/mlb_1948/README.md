## MLB Stats

I chose 1948, the first year that an integrated team won the World Series.
It also just happens that the team was the *[Cleveland Indians][cle]*. Really
you can get any year at [Baseball-reference.com][ref] for your own use!

The stats can be found at:

- [Batting][batting]
  - **[original][ref-batting]**
  - [batting column explanations][exp-batting]
- [Pitching][pitching]
  - **[original][ref-pitching]**
  - [pitching column explanations][exp-batting]
- [Team Standings][standings]
  - **[original][ref-standings]**
  - [team standings column explanations][exp-standings]

### Batting Column Explanations

- Rk: Rank (This is a count of the rows from top to bottom.
  It is recalculated following the sorting of a column.)
- Name: Player Name
  + * means LHP or LHB,
  + # means switch hitter,
  + + can mean HOFer.
- Age: Player’s age at midnight of June 30th of that year
- Lg: League (AL: American League, NL: National League)
- G: Games Played or Pitched
- PA: Plate Appearances (When available, we use actual plate appearances from
  play-by-play game accounts. Otherwise estimated using AB + BB + HBP + SF + SH,
  which excludes catcher interferences.)
- AB: At Bats
- R: Runs Scored/Allowed
- H: Hits/Hits Allowed
- 2B: Doubles Hit/Allowed
- 3B: Triples Hit/Allowed
- HR: Home Runs Hit/Allowed
- RBI: Runs Batted In
- SB: Stolen Bases
- CS: Caught Stealing
- BB: Bases on Balls/Walks
- SO: Strikeouts
- BA: Hits/At Bats
- OBP: `(H + BB + HBP)/(At Bats + BB + HBP + SF)`
- SLG: Total Bases/At Bats, or `(1B + 2*2B + 3*3B + 4*HR)/AB`
- OPS: On-Base + Slugging Percentages
- OPS+: `OPS+100*[OBP/lg OBP + SLG/lg SLG - 1]` (Adjusted to the player’s
- ballpark(s))
- TB: Total Bases `Singles + 2 x Doubles + 3 x Triples + 4 x Home Runs`.
- GDP: Double Plays Grounded Into (Only includes standard 6-4-3, 4-3, etc.
  double plays.)
- HBP: Times Hit by a Pitch.
- SH: Sacrifice Hits (Sacrifice Bunts)
- Pos Summary: Positions Played (The positions either followed by the games
  played at that position or in order of games or innings played.)
    + For a single season, * indicates they played at least 2/3rds of the team
      games there.
    + Positions after / indicate less than ten games played at those positions.
    + For career, a + sign means more than 300 games at that position and a -
      sign means less than 30 games.
    + Positions: 1: Pitcher, 2: Catcher, 3: First Base, 4: Second Base,
      5: Third Base, 6: Short Stop, 7: Left Field, 8: Center Field,
      9: Right Field

### Pitching Column Explanations

Rk: Rank
This is a count of the rows from top to bottom.
It is recalculated following the sorting of a column.
Name: Player Name
Bold can mean player is active for this team
or player has appeared in MLB
* means LHP or LHB,
# means switch hitter,
+ can mean HOFer.
Age: Player’s age at midnight of June 30th of that year
Lg: League
AL - American League (1901-present)
NL - National League (1876-present)
AA - American Association (1882-1891)
UA - Union Association (1884)
PL - Players League (1890)
FL - Federal League (1914-1915)
NA - National Association (1871-1875)
W: Wins
L: Losses
W-L%: Win-Loss Percentage
W / (W + L)
For players, leaders need one decision for every ten team games.
For managers, minimum to qualify for leading is 320 games.
ERA: 9 * ER / IP
For recent years, leaders need 1 IP
per team game played.
Bold indicates lowest ERA using current stats
Gold means awarded ERA title at end of year.
G: Games Played or Pitched
GS: Games Started
GF: Games Finished
CG: Complete Game
SHO: Shutouts
No runs allowed and a complete game.
SV: Saves
IP: Innings Pitched
H: Hits/Hits Allowed
R: Runs Scored/Allowed
ER: Earned Runs Allowed
HR: Home Runs Hit/Allowed
BB: Bases on Balls/Walks
IBB: Intentional Bases on Balls
First tracked in 1955.
SO: Strikeouts
HBP: Times Hit by a Pitch.
BK: Balks
WP: Wild Pitches
BF: Batters Faced
ERA+: ERA+
100*[lgERA/ERA]
Adjusted to the player’s ballpark(s).
FIP: Fielding Independent Pitching
this stat measures a pitcher's effectiveness at preventing HR, BB, HBP and causing SO
(13*HR + 3*(BB+HBP) - 2*SO)/IP + Constantlg
The constant is set so that each season MLB average FIP is the same as the MLB avg ERA
WHIP: (BB + H)/IP
For recent years, leaders need 1 IP
per team game played
H9: 9 x H / IP
For recent years, leaders need 1 IP
per team game played
HR9: 9 x HR / IP
For recent years, leaders need 1 IP
per team game played
BB9: 9 x BB / IP
For recent years, leaders need 1 IP
per team game played
SO9: 9 x SO / IP
For recent years, leaders need 1 IP
per team game played
SO/W: SO/W or SO/BB
For recent years, pitching leaders need 1 IP
per team game played.
No batting leaders computed.

### Team Standings Columns Explanations

Rk: Rank
This is a count of the rows from top to bottom.
It is recalculated following the sorting of a column.
Lg: League
AL - American League (1901-present)
NL - National League (1876-present)
AA - American Association (1882-1891)
UA - Union Association (1884)
PL - Players League (1890)
FL - Federal League (1914-1915)
NA - National Association (1871-1875)
G: Games Played or Pitched
W: Wins
L: Losses
W-L%: Win-Loss Percentage
W / (W + L)
For players, leaders need one decision for every ten team games.
For managers, minimum to qualify for leading is 320 games.
R: Runs Scored/Allowed
RA: Runs Allowed
Rdiff: Run Differential
Runs Scored - Runs Allowed
May be overall or per game
SOS: Strength of Schedule
The number of runs per game their opponents are better (or worse) than the average team.
Average ML team for years with inter-league play and just their league for other years.
SRS: Simple Rating System
The number of runs per game they are better (or worse) than the average team.
Average ML team for years with inter-league play and just their league for other years.
SRS = Run Differential (R_diff) + Strength of Schedule (SOS)
pythWL: Pythagorean Win-Loss
Expected Win-Loss record based on the number of runs scored
and allowed by the team.
Luck: Pythagorean Luck
The difference between the actual W-L and Pythagorean W-L.

<!-- Links -->

[cle]:           http://en.wikipedia.org/wiki/1948_Cleveland_Indians_season
[batting]:       mlb_1948_batting.csv
[pitching]:      mlb_1948_pitching.csv
[standings]:     mlb_1948_team_standings.csv
[ref]:           http://www.baseball-reference.com
[batting-ref]:   http://www.baseball-reference.com/leagues/MLB/1948-standard-batting.shtml
[pitching-ref]:  http://www.baseball-reference.com/leagues/MLB/1948-standard-pitching.shtml
[standings-ref]: http://www.baseball-reference.com/leagues/MLB/1948-standings.shtml
[exp-batting]:   #batting-column-explanations
