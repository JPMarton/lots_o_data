# This file is completely self-contained. Do not combine its contents with those
# of any other seed file. The data can then be loaded with the rake db:seed
# (or created alongside the db with db:setup).
#
# Last Updated June 2, 2016

# Clear out DB if there's anything there. ######################################
Program.delete_all
SpaceAgency.delete_all
Mission.delete_all
SpaceCraft.delete_all
Nation.delete_all
SpaceTraveler.delete_all
Assignment.delete_all

# Add some space agencies. #####################################################

nasa = SpaceAgency.create({
  abbreviation: "NASA",
  name:         "National Aeronautics and Space Administration",
  english_name: "National Aeronautics and Space Administration",
  budget:       18724,
  founded_on:   "1958-10-01"
})
ussr_sa = SpaceAgency.create({
  abbreviation: "Soviet Space Agency",
  name:         "Советская космическая программа",
  english_name: "Soviet Space Agency",
  budget:       0,
  founded_on:   "1955-01-01"
})
interkosmos = SpaceAgency.create({
  abbreviation: "Interkosmos",
  name:         "Интеркосмос",
  english_name: "Soviet International Space Program",
  budget:       0,
  founded_on:   "1967-04-01"
})
roscosmos = SpaceAgency.create({
  abbreviation: "Roscosmos",
  name:         "Федеральное космическое агентство",
  english_name: "Russian Federal Space Agency",
  budget:       5600,
  founded_on:   "1992-02-25"
})
esa = SpaceAgency.create({
  abbreviation: "ESA",
  name:         "Agence spatiale européenne",
  english_name: "European Space Agency",
  budget:       5510,
  founded_on:   "1975-05-30"
})
cnsa = SpaceAgency.create({
  abbreviation: "CNSA",
  name:         "国家航天局",
  english_name: "China National Space Administration",
  budget:       1300,
  founded_on:   "1993-04-22"
})
cnes = SpaceAgency.create({
  abbreviation: "CNES",
  name:         "Centre national d'études spatiales",
  english_name: "National Centre for Space Studies",
  budget:       2500,
  founded_on:   "1961-01-01"
})
jaxa = SpaceAgency.create({
  abbreviation: "JAXA",
  name:         "独立行政法人宇宙航空研究開発機構",
  english_name: "Japan Aerospace Exploration Agency",
  budget:       2460,
  founded_on:   "2003-01-01"
})
dlr = SpaceAgency.create({
  abbreviation: "DLR",
  name:         "Deutsches Zentrum für Luft und Raumfahrt e.V.",
  english_name: "German Aerospace Center",
  budget:       2000,
  founded_on:   "1969-01-01"
})
asi = SpaceAgency.create({
  abbreviation: "ASI",
  name:         "Agenzia Spaziale Italiana",
  english_name: "Italian Space Agency",
  budget:       1800,
  founded_on:   "1988-01-01"
})
csa_asc = SpaceAgency.create({
  abbreviation: "CSA/ASC",
  name:         "Canadian Space Agency / Agence Spatiale Canadienne",
  english_name: "Canadian Space Agency",
  budget:       483,
  founded_on:   "1990-05-10"
})
isa = SpaceAgency.create({
  abbreviation: "ISA",
  name:         "סוכנות החלל הישראלית",
  english_name: "Israel Space Agency",
  budget:       80,
  founded_on:   "1983-07-01"
})

# Salute your flags, nations of the earth. #####################################

usa    = Nation.create name: "The United States of America",            country_code: "US"
ussr   = Nation.create name: "The Union of Soviet Socialist Republics", country_code: "SU"
russia = Nation.create name: "The Russian Federation",                  country_code: "RU"
prc    = Nation.create name: "The People's Republic of China",          country_code: "CN"

fr = Nation.create name: "The French Republic",             country_code: "FR"
jp = Nation.create name: "Japan",                           country_code: "JP"
de = Nation.create name: "The Federal Republic of Germany", country_code: "DE"
it = Nation.create name: "The Italian Republic",            country_code: "IT"
uk = Nation.create name: "The United Kingdom",              country_code: "GB"
sw = Nation.create name: "The Swiss Confederation",         country_code: "CH"
ca = Nation.create name: "Canada",                          country_code: "CA"
il = Nation.create name: "Israel",                          country_code: "IL"

usa.space_agencies << nasa
ussr.space_agencies << ussr_sa
ussr.space_agencies << interkosmos
russia.space_agencies << ussr_sa
russia.space_agencies << interkosmos
russia.space_agencies << roscosmos
prc.space_agencies << cnsa
fr.space_agencies << esa
fr.space_agencies << cnes
jp.space_agencies << jaxa
de.space_agencies << esa
de.space_agencies << dlr
it.space_agencies << esa
it.space_agencies << asi
uk.space_agencies << esa
sw.space_agencies << esa
ca.space_agencies << csa_asc
ca.space_agencies << nasa
il.space_agencies << isa
il.space_agencies << nasa

# Manned Space Programs. Yay! ##################################################

mercury = Program.create name: "Mercury", space_agency: nasa
gemini  = Program.create name: "Gemini",  space_agency: nasa
apollo  = Program.create name: "Apollo",  space_agency: nasa

sputnik = Program.create name: "Sputnik", space_agency: ussr_sa # Спутник (Satellite)
vostok  = Program.create name: "Vostok",  space_agency: ussr_sa # Восток (East)
voskhod = Program.create name: "Voskhod", space_agency: ussr_sa # Восход (Dawn)
kosmos  = Program.create name: "Kosmos",  space_agency: ussr_sa

shenzhou = Program.create name: "Shenzhou", space_agency: cnsa, active: true # 神舟 – Shénzhōu (China the Divine Land)

# skylab        = Program.create name: "Skylab",                      space_agency: nasa
# apollo_soyuz  = Program.create name: "Apollo-Soyuz",                space_agency: nasa
# space_shuttle = Program.create name: "Space Shuttle",               space_agency: nasa
# shuttle_mir   = Program.create name: "Shuttle-Mir Partnership",     space_agency: nasa
# iss           = Program.create name: "International Space Station", space_agency: nasa, active: true
# # Program.create name: "Project Constellation", space_agency: nasa

# soyuz_ussr = Program.create name: "Soyuz",   space_agency: ussr_sa # Союз (Union)
# salyut     = Program.create name: "Salyut",  space_agency: ussr_sa # Салют-ДОС (Salute) / Алмаз (Diamond)
# mir        = Program.create name: "Mir",     space_agency: ussr_sa # Мир (Peace)
# # Program.create name: "Zvezda", space_agency: ussr_sa  # Звезда (Star)
# # Program.create name: "Zarya",  space_agency: ussr_sa  # Заря (Red Dawn)
# # Program.create name: "Spiral", space_agency: ussr_sa  # Спираль (Spiral)
# # Program.create name: "Buran",  space_agency: ussr_sa  # Буран (Blizzard)

# soyuz_russia = Program.create name: "Soyuz", space_agency: roscosmos, active: true # Союз (Union)

# Missions. Here we go, cap'n! #################################################

mr3 = mercury.missions.create name: "Mercury-Redstone 3", starts_on: "1961-05-05", ends_on: "1961-05-05"
mr4 = mercury.missions.create name: "Mercury-Redstone 4", starts_on: "1961-07-21", ends_on: "1961-07-21"
ma6 = mercury.missions.create name: "Mercury-Atlas 6",    starts_on: "1962-02-20", ends_on: "1962-02-20"
ma7 = mercury.missions.create name: "Mercury-Atlas 7",    starts_on: "1962-05-24", ends_on: "1962-05-24"
ma8 = mercury.missions.create name: "Mercury-Atlas 8",    starts_on: "1962-10-03", ends_on: "1962-10-03"
ma9 = mercury.missions.create name: "Mercury-Atlas 9",    starts_on: "1963-05-15", ends_on: "1963-05-15"
g03 = gemini.missions.create name: "Gemini 3",    starts_on: "1965-03-23", ends_on: "1965-03-23"
g04 = gemini.missions.create name: "Gemini IV",   starts_on: "1965-06-03", ends_on: "1965-06-07"
g05 = gemini.missions.create name: "Gemini V",    starts_on: "1965-08-21", ends_on: "1965-08-29"
g06 = gemini.missions.create name: "Gemini VII",  starts_on: "1965-12-04", ends_on: "1965-12-18"
g07 = gemini.missions.create name: "Gemini VI-A", starts_on: "1965-12-15", ends_on: "1965-12-16"
g08 = gemini.missions.create name: "Gemini VIII", starts_on: "1966-03-16", ends_on: "1966-03-17"
g09 = gemini.missions.create name: "Gemini IX-A", starts_on: "1966-06-03", ends_on: "1966-06-06"
g10 = gemini.missions.create name: "Gemini X",    starts_on: "1966-07-18", ends_on: "1966-07-21"
g11 = gemini.missions.create name: "Gemini XI",   starts_on: "1966-09-12", ends_on: "1966-09-15"
g12 = gemini.missions.create name: "Gemini XII",  starts_on: "1966-11-11", ends_on: "1966-11-15"
a01 = apollo.missions.create name: "Apollo 1",  starts_on: "1967-02-21", ends_on: "1967-02-21" # ✝
a07 = apollo.missions.create name: "Apollo 7",  starts_on: "1968-10-11", ends_on: "1968-10-22"
a08 = apollo.missions.create name: "Apollo 8",  starts_on: "1968-12-21", ends_on: "1968-12-27"
a09 = apollo.missions.create name: "Apollo 9",  starts_on: "1969-03-03", ends_on: "1969-03-13"
a10 = apollo.missions.create name: "Apollo 10", starts_on: "1969-05-18", ends_on: "1969-05-26"
a11 = apollo.missions.create name: "Apollo 11", starts_on: "1969-07-16", ends_on: "1969-07-24"
a12 = apollo.missions.create name: "Apollo 12", starts_on: "1969-11-14", ends_on: "1969-11-24"
a13 = apollo.missions.create name: "Apollo 13", starts_on: "1970-04-11", ends_on: "1970-04-17"
a14 = apollo.missions.create name: "Apollo 14", starts_on: "1971-01-31", ends_on: "1971-02-09"
a15 = apollo.missions.create name: "Apollo 15", starts_on: "1971-07-26", ends_on: "1971-08-07"
a16 = apollo.missions.create name: "Apollo 16", starts_on: "1972-04-16", ends_on: "1972-04-27"
a17 = apollo.missions.create name: "Apollo 17", starts_on: "1972-12-07", ends_on: "1972-12-19"
sp2 = sputnik.missions.create name: "Sputnik 2", starts_on: "1957-11-03", ends_on: "1958-04-14" # ✝
ks2 = vostok.missions.create name: "Korabl-Sputnik 2", starts_on: "1960-08-19", ends_on: "1960-08-20"
ks3 = vostok.missions.create name: "Korabl-Sputnik 3", starts_on: "1960-12-01", ends_on: "1960-12-02" # ✝
ks4 = vostok.missions.create name: "Korabl-Sputnik 4", starts_on: "1961-03-09", ends_on: "1961-03-09"
ks5 = vostok.missions.create name: "Korabl-Sputnik 5", starts_on: "1961-03-25", ends_on: "1961-03-25"
vk1 = vostok.missions.create name: "Vostok 1", starts_on: "1961-04-12", ends_on: "1961-04-12"
vk2 = vostok.missions.create name: "Vostok 2", starts_on: "1961-08-06", ends_on: "1961-08-07"
vk3 = vostok.missions.create name: "Vostok 3", starts_on: "1962-08-11", ends_on: "1962-08-15"
vk4 = vostok.missions.create name: "Vostok 4", starts_on: "1962-08-12", ends_on: "1962-08-15"
vk5 = vostok.missions.create name: "Vostok 5", starts_on: "1963-06-14", ends_on: "1963-06-19"
vk6 = vostok.missions.create name: "Vostok 6", starts_on: "1963-06-16", ends_on: "1963-06-19"
vd1 = voskhod.missions.create name: "Voskhod 1", starts_on: "1964-10-12", ends_on: "1964-10-13"
vd2 = voskhod.missions.create name: "Voskhod 2", starts_on: "1965-03-18", ends_on: "1965-03-19"
k110 = kosmos.missions.create name: "Kosmos 110", starts_on: "1966-02-22", ends_on: "1966-03-16"

sz05 = shenzhou.missions.create name: "Shenzhou 5",  starts_on: "2003-10-15", ends_on: "2003-10-15"
sz06 = shenzhou.missions.create name: "Shenzhou 6",  starts_on: "2005-10-12", ends_on: "2005-10-16"
sz07 = shenzhou.missions.create name: "Shenzhou 7",  starts_on: "2008-09-25", ends_on: "2008-09-28"
sz09 = shenzhou.missions.create name: "Shenzhou 9",  starts_on: "2012-06-16", ends_on: "2012-06-29"
sz10 = shenzhou.missions.create name: "Shenzhou 10", starts_on: "2013-06-11", ends_on: "2013-06-26"

# Missing NASA missions:
# https://en.wikipedia.org/wiki/List_of_NASA_missions
#
# 3 Skylab missions (https://en.wikipedia.org/wiki/Skylab)
# 1 Apollo-Soyuz mission (https://en.wikipedia.org/wiki/Apollo%E2%80%93Soyuz_Test_Project)
# 9 Shuttle-Mir missions (https://en.wikipedia.org/wiki/Shuttle%E2%80%93Mir_Program)
# 135 Space Shuttle missions (https://en.wikipedia.org/wiki/List_of_Space_Shuttle_missions)
# 44 ISS missions as of June 2, 2016… (https://en.wikipedia.org/wiki/International_Space_Station)

# Missing Soviet space missions:
# https://en.wikipedia.org/wiki/List_of_Soviet_manned_space_missions
#
# 67 Soyuz missions

# Missing Roscosmos missions:
# https://en.wikipedia.org/wiki/List_of_Russian_manned_space_missions
#
# 64+ Soyuz missions as of June 2, 2016…

# Missing CNSA missions:
# https://en.wikipedia.org/wiki/Shenzhou_program
# https://en.wikipedia.org/wiki/Chinese_space_program
#
# 0+ Shenzhou missions as of June 2, 2016…

# Space Craft, ahoy! ###########################################################

mr = SpaceCraft.create name: "Mercury-Redstone",   build: "Capsule - 1 Stage ELV",     payload_capacity: 1800
ma = SpaceCraft.create name: "Mercury-Atlas",      build: "Capsule - 1.5 Stage ELV",   payload_capacity: 1360
titan2  = SpaceCraft.create name: "Titan II (GLV)",     build: "Dual Module - 2 Stage ELV", payload_capacity: 3580
saturn1 = SpaceCraft.create name: "Saturn IB (AS-200)", build: "Dual Module - 3 Stage ELV", payload_capacity: 21000
saturn5 = SpaceCraft.create name: "Saturn V (AS-500)",  build: "Dual Module - 3 Stage ELV", payload_capacity: 140000
sp_ps  = SpaceCraft.create name: "Sputnik-PS",            build: "Capsule - 1 Stage ELV",     payload_capacity: 500
vk_1k  = SpaceCraft.create name: "Vostok 1K (Vostok L)",  build: "Capsule - 2 Stage ELV",     payload_capacity: 4550
vk_3ka = SpaceCraft.create name: "Vostok 3KA (Vostok-K)", build: "Capsule - 2 Stage ELV",     payload_capacity: 4730
vk_3kv = SpaceCraft.create name: "Vostok 3KV (Voskhod)",  build: "Dual Module - 2 Stage ELV", payload_capacity: 5900
vd_3kd = SpaceCraft.create name: "Voskhod 3KD (Voskhod)", build: "Dual Module - 2 Stage ELV", payload_capacity: 5900
s_lm2f = SpaceCraft.create name: "Shenzhou (Shenjian)", build: "Triple Module - 2 Stage ELV", payload_capacity: 8400 # Long March 2F

# challenger = SpaceCraft.create name: "Challenger (OV-099)", build: "Space Shuttle - 2 Stage RLV", payload_capacity: 60600
# enterprise = SpaceCraft.create name: "Enterprise (OV-101)", build: "Space Shuttle - 2 Stage RLV", payload_capacity: 60600
# columbia   = SpaceCraft.create name: "Columbia (OV-102)",   build: "Space Shuttle - 2 Stage RLV", payload_capacity: 60600
# discovery  = SpaceCraft.create name: "Discovery (OV-103)",  build: "Space Shuttle - 2 Stage RLV", payload_capacity: 60600
# atlantis   = SpaceCraft.create name: "Atlantis (OV-104)",   build: "Space Shuttle - 2 Stage RLV", payload_capacity: 60600
# endeavour  = SpaceCraft.create name: "Endeavour (OV-105)",  build: "Space Shuttle - 2 Stage RLV", payload_capacity: 60600

mr3.update space_craft: mr
mr4.update space_craft: mr
[ma6, ma7, ma8, ma9].each do |mercury_atlas_mission|
  mercury_atlas_mission.update space_craft: ma
end

[g03, g04, g05, g06, g07, g08, g09, g10, g11, g12].each do |gemini_mission|
  gemini_mission.update space_craft: titan2
end

a01.update space_craft: saturn1
a07.update space_craft: saturn1

[a08, a09, a10, a11, a12, a13, a14, a15, a16, a17].each do |apollo_mission|
  apollo_mission.update space_craft: saturn5
end

sp2.update space_craft: sp_ps
ks2.update space_craft: vk_1k
ks3.update space_craft: vk_1k

[ks4, ks5, vk1, vk2, vk3, vk4, vk5, vk6].each do |mission|
  mission.update space_craft: vk_3ka
end

vd1.update space_craft: vk_3kv
k110.update space_craft: vk_3kv
vd2.update space_craft: vd_3kd

[sz05, sz06, sz07, sz09, sz10].each do |shenzhou_mission|
  shenzhou_mission.update space_craft: s_lm2f
end

# SPACE TRAVELERS! #############################################################
# https://en.wikipedia.org/wiki/List_of_astronauts_by_year_of_selection

# The Mercury 7
carpenter = SpaceTraveler.create name: "M. Scott Carpenter", sex: "M", nation: usa, born_on: "1925-05-01", died_on: "2013-10-10"
cooper    = SpaceTraveler.create name: "Gordo Cooper",       sex: "M", nation: usa, born_on: "1927-03-06", died_on: "2004-10-04"
glenn     = SpaceTraveler.create name: "John Glenn",         sex: "M", nation: usa, born_on: "1921-07-18"
grissom   = SpaceTraveler.create name: "Gus Grissom",        sex: "M", nation: usa, born_on: "1926-04-03", died_on: "1967-01-27"
schirra   = SpaceTraveler.create name: "Wally Schirra",      sex: "M", nation: usa, born_on: "1923-03-12", died_on: "2007-05-03"
shepard   = SpaceTraveler.create name: "Alan Shepard",       sex: "M", nation: usa, born_on: "1923-11-18", died_on: "1998-07-21"
slayton   = SpaceTraveler.create name: "Deke Slayton",       sex: "M", nation: usa, born_on: "1924-03-01", died_on: "1993-06-13"

# The New Nine (Astronaut Group 2)
armstrong   = SpaceTraveler.create name: "Neil Armstrong",  sex: "M", nation: usa, born_on: "1930-08-05", died_on: "2012-08-25"
borman      = SpaceTraveler.create name: "Frank Borman",    sex: "M", nation: usa, born_on: "1928-03-14"
conrad      = SpaceTraveler.create name: "Pete Conrad",     sex: "M", nation: usa, born_on: "1930-06-02", died_on: "1999-07-08"
lovell      = SpaceTraveler.create name: "James Lovell",    sex: "M", nation: usa, born_on: "1928-03-25"
mcdivitt    = SpaceTraveler.create name: "James McDivitt",  sex: "M", nation: usa, born_on: "1929-06-10"
see         = SpaceTraveler.create name: "Elliot See",      sex: "M", nation: usa, born_on: "1927-07-23", died_on: "1966-02-28"
stafford    = SpaceTraveler.create name: "Thomas Stafford", sex: "M", nation: usa, born_on: "1930-09-17"
white       = SpaceTraveler.create name: "Edward White",    sex: "M", nation: usa, born_on: "1930-11-14", died_on: "1967-01-27"
young       = SpaceTraveler.create name: "John Young",      sex: "M", nation: usa, born_on: "1930-09-24"

# The Fourteen (Astronaut Group 3)
aldrin      = SpaceTraveler.create name: "Buzz Aldrin",          sex: "M", nation: usa, born_on: "1930-01-20"
anders      = SpaceTraveler.create name: "William Anders",       sex: "M", nation: usa, born_on: "1933-10-17"
bassett     = SpaceTraveler.create name: "Charles Bassett" ,     sex: "M", nation: usa, born_on: "1931-12-30", died_on: "1966-02-28"
bean        = SpaceTraveler.create name: "Alan Bean",            sex: "M", nation: usa, born_on: "1932-03-15"
cernan      = SpaceTraveler.create name: "Eugene Cernan",        sex: "M", nation: usa, born_on: "1934-03-14"
chaffee     = SpaceTraveler.create name: "Roger Chaffee",        sex: "M", nation: usa, born_on: "1935-02-15", died_on: "1967-01-27"
collins     = SpaceTraveler.create name: "Michael Collins",      sex: "M", nation: usa, born_on: "1930-10-31"
cunningham  = SpaceTraveler.create name: "R. Walter Cunningham", sex: "M", nation: usa, born_on: "1932-03-16"
eisele      = SpaceTraveler.create name: "Donn Eisele",          sex: "M", nation: usa, born_on: "1930-06-23", died_on: "1987-12-02"
freeman     = SpaceTraveler.create name: "Theodore Freeman",     sex: "M", nation: usa, born_on: "1930-02-18", died_on: "1964-10-31"
gordon      = SpaceTraveler.create name: "Richard Gordon",       sex: "M", nation: usa, born_on: "1929-10-05"
schweickart = SpaceTraveler.create name: "Rusty Schweickart",    sex: "M", nation: usa, born_on: "1935-10-25"
scott       = SpaceTraveler.create name: "David Scott",          sex: "M", nation: usa, born_on: "1932-06-06"
williams    = SpaceTraveler.create name: "Clifton Williams",     sex: "M", nation: usa, born_on: "1932-09-26", died_on: "1967-10-05"

# The Scientists (Astronaut Group 4)
garriott  = SpaceTraveler.create name: "Dr. Owen Garriott",   sex: "M", nation: usa, born_on: "1930-11-22"
gibson    = SpaceTraveler.create name: "Dr. Edward Gibson",   sex: "M", nation: usa, born_on: "1936-11-08"
graveline = SpaceTraveler.create name: "Dr. Duane Graveline", sex: "M", nation: usa, born_on: "1931-03-02"
kerwin    = SpaceTraveler.create name: "Dr. Joseph Kerwin",   sex: "M", nation: usa, born_on: "1932-02-19"
michel    = SpaceTraveler.create name: "Dr. Curt Michel",     sex: "M", nation: usa, born_on: "1934-06-05", died_on: "2015-02-26"
schmitt   = SpaceTraveler.create name: "Dr. Jack Schmitt",    sex: "M", nation: usa, born_on: "1935-07-03"

# The "Original" 19 (Astronaut Group 5)
brand       = SpaceTraveler.create name: "Vance Brand",          sex: "M", nation: usa, born_on: "1931-05-09"
bull        = SpaceTraveler.create name: "John S. Bull",         sex: "M", nation: usa, born_on: "1934-09-25", died_on: "2008-08-11"
carr        = SpaceTraveler.create name: "Gerald Carr",          sex: "M", nation: usa, born_on: "1932-08-22"
duke        = SpaceTraveler.create name: "Charles Duke",         sex: "M", nation: usa, born_on: "1935-10-03"
engle       = SpaceTraveler.create name: "Joseph Engle",         sex: "M", nation: usa, born_on: "1932-08-26"
evans       = SpaceTraveler.create name: "Ronald Evans",         sex: "M", nation: usa, born_on: "1933-11-10", died_on: "1990-04-07"
givens      = SpaceTraveler.create name: "Edward Givens",        sex: "M", nation: usa, born_on: "1930-01-05", died_on: "1967-06-06"
haise       = SpaceTraveler.create name: "Fred Haise",           sex: "M", nation: usa, born_on: "1933-11-14"
irwin       = SpaceTraveler.create name: "James Irwin",          sex: "M", nation: usa, born_on: "1930-03-17", died_on: "1991-08-08"
lind        = SpaceTraveler.create name: "Don Lind",             sex: "M", nation: usa, born_on: "1930-05-18"
lousma      = SpaceTraveler.create name: "Jack Lousma",          sex: "M", nation: usa, born_on: "1936-02-29"
mattingly   = SpaceTraveler.create name: "T. 'Ken' Mattingly",   sex: "M", nation: usa, born_on: "1936-03-17"
mccandless  = SpaceTraveler.create name: "Bruce McCandless",     sex: "M", nation: usa, born_on: "1937-06-08"
mitchell    = SpaceTraveler.create name: "Edgar Mitchell",       sex: "M", nation: usa, born_on: "1930-09-17", died_on: "2016-02-04"
pogue       = SpaceTraveler.create name: "William Pogue",        sex: "M", nation: usa, born_on: "1930-01-23", died_on: "2014-03-03"
roosa       = SpaceTraveler.create name: "Stuart Roosa",         sex: "M", nation: usa, born_on: "1933-08-16", died_on: "1994-12-12"
swigert     = SpaceTraveler.create name: "Jack Swigert",         sex: "M", nation: usa, born_on: "1931-08-30", died_on: "1982-12-27"
weitz       = SpaceTraveler.create name: "Paul Weitz",           sex: "M", nation: usa, born_on: "1932-07-25"
worden      = SpaceTraveler.create name: "Alfred Worden",        sex: "M", nation: usa, born_on: "1932-02-07"

# The Vanguard Six
# https://en.wikipedia.org/wiki/Vostok_programme
bykovsky   = SpaceTraveler.create name: "Valery Bykovsky",      sex: "M", nation: ussr, born_on: "1934-08-02"
gagarin    = SpaceTraveler.create name: "Yuri Gagarin",         sex: "M", nation: ussr, born_on: "1934-03-09", died_on: "1968-03-27"
kartashov  = SpaceTraveler.create name: "Anatoli Kartashov",    sex: "M", nation: ussr, born_on: "1932-08-25", died_on: "2005-12-11" # original, dismissed for medical reasons
nelyubov   = SpaceTraveler.create name: "Grigori Nelyubov",     sex: "M", nation: ussr, born_on: "1934-03-31", died_on: "1966-02-18" # replacement, but dismissed for disorderly conduct
nikolayev  = SpaceTraveler.create name: "Andriyan Nikolayev",   sex: "M", nation: ussr, born_on: "1929-09-01", died_on: "2004-07-03"
popovich   = SpaceTraveler.create name: "Pavel Popovich",       sex: "M", nation: ussr, born_on: "1930-10-05", died_on: "2009-09-29"
titov      = SpaceTraveler.create name: "Gherman Titov",        sex: "M", nation: ussr, born_on: "1935-09-01", died_on: "2000-09-20"
varlamov   = SpaceTraveler.create name: "Valentin Varlamov",    sex: "M", nation: ussr, born_on: "1934-08-15", died_on: "1980-10-02" # original, dismissed for medical reasons

# Graduate of the Women's Cosmonaut Group
tereshkova = SpaceTraveler.create name: "Valentina Tereshkova", sex: "F", nation: ussr, born_on: "1937-03-06"

# Voskhod Cosmonauts
belyayev   = SpaceTraveler.create name: "Pavel Belyayev",        sex: "M", nation: ussr, born_on: "1925-06-26", died_on: "1970-01-10"
feoktistov = SpaceTraveler.create name: "Konstantin Feoktistov", sex: "M", nation: ussr, born_on: "1926-02-07", died_on: "2009-11-21"
komarov    = SpaceTraveler.create name: "Vladimir Komarov",      sex: "M", nation: ussr, born_on: "1927-03-16", died_on: "1967-04-24"
leonov     = SpaceTraveler.create name: "Alexey Leonov",         sex: "M", nation: ussr, born_on: "1934-05-30"
yegorov    = SpaceTraveler.create name: "Boris Yegorov",         sex: "M", nation: ussr, born_on: "1937-11-26", died_on: "1994-09-12"

# Soviet Space Dogs
laika       = SpaceTraveler.create name: "Laika (Dog)",       sex: "F", nation: ussr, born_on: "1954-01-01", died_on: "1957-11-03"
belka       = SpaceTraveler.create name: "Belka (Dog)",       sex: "F", nation: ussr, born_on: "1954-01-01", died_on: "1966-01-01"
strelka     = SpaceTraveler.create name: "Strelka (Dog)",     sex: "F", nation: ussr, born_on: "1954-01-01", died_on: "1966-01-01"
pchyolka    = SpaceTraveler.create name: "Pchyolka (Dog)",    sex: "F", nation: ussr, born_on: "1956-01-01", died_on: "1960-12-02"
mushka      = SpaceTraveler.create name: "Mushka (Dog)",      sex: "F", nation: ussr, born_on: "1956-01-01", died_on: "1960-12-02"
chernushka  = SpaceTraveler.create name: "Chernushka (Dog)",  sex: "F", nation: ussr, born_on: "1956-01-01", died_on: "1968-01-01"
zvyozdochka = SpaceTraveler.create name: "Zvyozdochka (Dog)", sex: "F", nation: ussr, born_on: "1956-01-01", died_on: "1968-01-01"
veterok     = SpaceTraveler.create name: "Veterok (Dog)",     sex: "M", nation: ussr, born_on: "1963-01-01", died_on: "1975-01-01"
ugolyok     = SpaceTraveler.create name: "Ugolyok (Dog)",     sex: "M", nation: ussr, born_on: "1963-01-01", died_on: "1975-01-01"

# Shenzhou Taikonauts
fei   = SpaceTraveler.create name: "Fei Junlong",     sex: "M", nation: prc, born_on: "1965-05-05"
jing  = SpaceTraveler.create name: "Jing Haipeng",    sex: "M", nation: prc, born_on: "1966-10-24"
liuB  = SpaceTraveler.create name: "Liu Boming",      sex: "M", nation: prc, born_on: "1966-09-01"
liuW  = SpaceTraveler.create name: "Liu Wang",        sex: "M", nation: prc, born_on: "1969-03-01"
liuY  = SpaceTraveler.create name: "Liu Yang",        sex: "F", nation: prc, born_on: "1978-10-06"
nie   = SpaceTraveler.create name: "Nie Haisheng",    sex: "M", nation: prc, born_on: "1964-10-13"
wang  = SpaceTraveler.create name: "Wang Yaping",     sex: "F", nation: prc, born_on: "1980-01-01"
yang  = SpaceTraveler.create name: "Yang Liwei",      sex: "M", nation: prc, born_on: "1965-06-21"
zhai  = SpaceTraveler.create name: "Zhai Zhigang",    sex: "M", nation: prc, born_on: "1966-10-10"
zhang = SpaceTraveler.create name: "Zhang Xiaoguang", sex: "M", nation: prc, born_on: "1966-05-01"

# Mission ↔ Space Traveler

mr3.assignments << Assignment.create(space_traveler: shepard,   role: :pilot)
mr4.assignments << Assignment.create(space_traveler: grissom,   role: :pilot)
ma6.assignments << Assignment.create(space_traveler: glenn,     role: :pilot)
ma7.assignments << Assignment.create(space_traveler: carpenter, role: :pilot)
ma8.assignments << Assignment.create(space_traveler: schirra,   role: :pilot)
ma9.assignments << Assignment.create(space_traveler: cooper,    role: :pilot)

g03.assignments << [
  Assignment.create(space_traveler: grissom, role: :command_pilot),
  Assignment.create(space_traveler: young,   role: :pilot)
]
g04.assignments << [
  Assignment.create(space_traveler: mcdivitt, role: :command_pilot),
  Assignment.create(space_traveler: white,    role: :pilot)
]
g05.assignments << [
  Assignment.create(space_traveler: cooper, role: :command_pilot),
  Assignment.create(space_traveler: conrad, role: :pilot)
]
g06.assignments << [
  Assignment.create(space_traveler: borman, role: :command_pilot),
  Assignment.create(space_traveler: lovell, role: :pilot)
]
g07.assignments << [
  Assignment.create(space_traveler: schirra,  role: :command_pilot),
  Assignment.create(space_traveler: stafford, role: :pilot)
]
g08.assignments << [
  Assignment.create(space_traveler: armstrong, role: :command_pilot),
  Assignment.create(space_traveler: scott,     role: :pilot)
]
g09.assignments << [
  Assignment.create(space_traveler: stafford, role: :command_pilot),
  Assignment.create(space_traveler: cernan,   role: :pilot)
]
g10.assignments << [
  Assignment.create(space_traveler: young,   role: :command_pilot),
  Assignment.create(space_traveler: collins, role: :pilot)
]
g11.assignments << [
  Assignment.create(space_traveler: conrad, role: :command_pilot),
  Assignment.create(space_traveler: gordon, role: :pilot)
]
g12.assignments << [
  Assignment.create(space_traveler: lovell, role: :command_pilot),
  Assignment.create(space_traveler: aldrin, role: :pilot)
]
a01.assignments << [
  Assignment.create(space_traveler: grissom, role: :commander),
  Assignment.create(space_traveler: white,   role: :pilot),
  Assignment.create(space_traveler: chaffee, role: :module_pilot)
]
a07.assignments << [
  Assignment.create(space_traveler: schirra,    role: :commander),
  Assignment.create(space_traveler: eisele,     role: :pilot),
  Assignment.create(space_traveler: cunningham, role: :module_pilot)
]
a08.assignments << [
  Assignment.create(space_traveler: borman, role: :commander),
  Assignment.create(space_traveler: lovell, role: :pilot),
  Assignment.create(space_traveler: anders, role: :module_pilot)
]
a09.assignments << [
  Assignment.create(space_traveler: mcdivitt,    role: :commander),
  Assignment.create(space_traveler: scott,       role: :pilot),
  Assignment.create(space_traveler: schweickart, role: :module_pilot)
]
a10.assignments << [
  Assignment.create(space_traveler: stafford, role: :commander),
  Assignment.create(space_traveler: young,    role: :pilot),
  Assignment.create(space_traveler: cernan,   role: :module_pilot)
]
a11.assignments << [
  Assignment.create(space_traveler: armstrong, role: :commander),
  Assignment.create(space_traveler: collins,   role: :pilot),
  Assignment.create(space_traveler: aldrin,    role: :module_pilot)
]
a12.assignments << [
  Assignment.create(space_traveler: conrad, role: :commander),
  Assignment.create(space_traveler: gordon, role: :pilot),
  Assignment.create(space_traveler: bean,   role: :module_pilot)
]
a13.assignments << [
  Assignment.create(space_traveler: lovell,  role: :commander),
  Assignment.create(space_traveler: swigert, role: :pilot),
  Assignment.create(space_traveler: haise,   role: :module_pilot)
]
a14.assignments << [
  Assignment.create(space_traveler: shepard,  role: :commander),
  Assignment.create(space_traveler: roosa,    role: :pilot),
  Assignment.create(space_traveler: mitchell, role: :module_pilot)
]
a15.assignments << [
  Assignment.create(space_traveler: scott,  role: :commander),
  Assignment.create(space_traveler: worden, role: :pilot),
  Assignment.create(space_traveler: irwin,  role: :module_pilot)
]
a16.assignments << [
  Assignment.create(space_traveler: young,     role: :commander),
  Assignment.create(space_traveler: mattingly, role: :pilot),
  Assignment.create(space_traveler: duke,      role: :module_pilot)
]
a17.assignments << [
  Assignment.create(space_traveler: cernan,  role: :commander),
  Assignment.create(space_traveler: evans,   role: :pilot),
  Assignment.create(space_traveler: schmitt, role: :module_pilot)
]

sp2.assignments << Assignment.create(space_traveler: laika)
ks2.assignments << [
  Assignment.create(space_traveler: belka),
  Assignment.create(space_traveler: strelka)
]
ks3.assignments << [
  Assignment.create(space_traveler: pchyolka),
  Assignment.create(space_traveler: mushka)
]
ks4.assignments << Assignment.create(space_traveler: chernushka)
ks5.assignments << Assignment.create(space_traveler: zvyozdochka)

vk1.assignments << Assignment.create(space_traveler: gagarin,    role: :pilot)
vk2.assignments << Assignment.create(space_traveler: titov,      role: :pilot)
vk3.assignments << Assignment.create(space_traveler: nikolayev,  role: :pilot)
vk4.assignments << Assignment.create(space_traveler: popovich,   role: :pilot)
vk5.assignments << Assignment.create(space_traveler: bykovsky,   role: :pilot)
vk6.assignments << Assignment.create(space_traveler: tereshkova, role: :pilot)
vd1.assignments << [
  Assignment.create(space_traveler: komarov,    role: :command_pilot),
  Assignment.create(space_traveler: feoktistov, role: :flight_engineer),
  Assignment.create(space_traveler: yegorov,    role: :doctor)
]
vd2.assignments << [
  Assignment.create(space_traveler: belyayev, role: :commander),
  Assignment.create(space_traveler: leonov,   role: :pilot)
]

k110.assignments << [
  Assignment.create(space_traveler: veterok),
  Assignment.create(space_traveler: ugolyok)
]

sz05.assignments << Assignment.create(space_traveler: yang, role: :commander)
sz06.assignments << [
  Assignment.create(space_traveler: fei, role: :commander),
  Assignment.create(space_traveler: nie, role: :flight_engineer)
]
sz07.assignments << [
  Assignment.create(space_traveler: zhai, role: :commander),
  Assignment.create(space_traveler: liuB, role: :module_pilot),
  Assignment.create(space_traveler: jing, role: :module_pilot)
]
sz09.assignments << [
  Assignment.create(space_traveler: jing, role: :commander),
  Assignment.create(space_traveler: liuW, role: :module_pilot),
  Assignment.create(space_traveler: liuY, role: :module_pilot)
]
sz10.assignments << [
  Assignment.create(space_traveler: nie,   role: :commander),
  Assignment.create(space_traveler: zhang, role: :module_pilot),
  Assignment.create(space_traveler: wang,  role: :module_pilot)
]
