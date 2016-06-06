DROP TABLE IF EXISTS missions_space_crafts;
DROP TABLE IF EXISTS missions;
DROP TABLE IF EXISTS space_programs;
DROP TABLE IF EXISTS space_travelers;
DROP TABLE IF EXISTS space_crafts;
DROP TABLE IF EXISTS nations;
DROP TYPE  IF EXISTS genders;
DROP TYPE  IF EXISTS roles;

-- O, or other, includes N/A, Unknown or Did Not Respond
CREATE TYPE sexes AS ENUM ('M','F','O');

-- Compiled from:
-- http://en.wikipedia.org/wiki/Astronaut_ranks_and_positions
CREATE TYPE roles AS ENUM (
  'Commander',
  'Module Commander',
  'Pilot Commander',
  'Pilot',
  'Second Pilot',
  'Module Pilot',
  'Flight Engineer',
  'Science Officer',
  'Mission Specialist',
  'Scientist',
  'Doctor',
  'Payload Commander ',
  'Payload Specialist',
  'Spaceflight Participant'
);

CREATE TABLE nations (
  id            serial       PRIMARY KEY,
  country_code  varchar(2)   UNIQUE NOT NULL, -- ISO 3166-1 codes (CCs)
  name          varchar(50)  NOT NULL
);

CREATE TABLE space_crafts (
  id         serial       PRIMARY KEY,
  name       varchar(100) NOT NULL,
  craft_type varchar(100),
  capacity   integer      DEFAULT 5
);

CREATE TABLE space_travelers (
  id        serial       PRIMARY KEY,
  name      varchar(100) NOT NULL,
  role      roles        DEFAULT 'Spaceflight Participant',
  born_on   date         NOT NULL,
  gender    genders      NOT NULL,
  nation_id integer      REFERENCES nations(id)
);

-- Use of 'decimal' type:
-- http://stackoverflow.com/questions/1019939/ruby-on-rails-best-method-of-handling-currency-money
CREATE TABLE space_programs (
  id         serial        PRIMARY KEY,
  name       varchar(50)   UNIQUE NOT NULL,
  budget     decimal,
  director   varchar(100),
  founded_on date          NOT NULL,
  nation_id  integer       REFERENCES nations(id)
);

CREATE TABLE missions (
  id               serial       PRIMARY KEY,
  name             varchar(100) NOT NULL,
  start_date       date         NOT NULL,
  end_date         date,
  space_program_id integer      REFERENCES space_programs(id),
  space_craft_id   integer      REFERENCES space_crafts(id),
  piloted_by_id    integer      REFERENCES space_travelers(id)
);

CREATE TABLE missions_space_crafts (
  mission_id     integer REFERENCES missions(id),
  space_craft_id integer REFERENCES space_crafts(id)
);
