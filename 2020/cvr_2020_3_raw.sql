START TRANSACTION;
DROP TABLE IF EXISTS `cvr_2020_3_raw`;
CREATE TABLE `cvr_2020_3_raw` (
  `record` int(11) NOT NULL PRIMARY KEY,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `president` tinytext NOT NULL,
  `representative_congress_2` tinytext NOT NULL,
  `representative_congress_3` tinytext NOT NULL,
  `representative_congress_7` tinytext NOT NULL,
  `mayor` tinytext NOT NULL,
  `president_city_council` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `city_council_1` tinytext NOT NULL,
  `city_council_2` tinytext NOT NULL,
  `city_council_3` tinytext NOT NULL,
  `city_council_4` tinytext NOT NULL,
  `city_council_5` tinytext NOT NULL,
  `city_council_6` tinytext NOT NULL,
  `city_council_7` tinytext NOT NULL,
  `city_council_8` tinytext NOT NULL,
  `city_council_9` tinytext NOT NULL,
  `city_council_10` tinytext NOT NULL,
  `city_council_11` tinytext NOT NULL,
  `city_council_12` tinytext NOT NULL,
  `city_council_13` tinytext NOT NULL,
  `city_council_14` tinytext NOT NULL,
  `judge_circuit_court_1` tinytext NOT NULL,
  `judge_circuit_court_2` tinytext NOT NULL,
  `judge_circuit_court_3` tinytext NOT NULL,
  `judge_circuit_court_4` tinytext NOT NULL,
  `judge_circuit_court_5` tinytext NOT NULL,
  `judge_court_special_appeals_at_large` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `qa` tinytext NOT NULL,
  `qb` tinytext NOT NULL,
  `qc` tinytext NOT NULL,
  `qd` tinytext NOT NULL,
  `qe` tinytext NOT NULL,
  `qf` tinytext NOT NULL,
  `qg` tinytext NOT NULL,
  `qh` tinytext NOT NULL,
  `qi` tinytext NOT NULL,
  `qj` tinytext NOT NULL,
  `qk` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2020 Baltimore City';

INSERT IGNORE INTO `race` (`name`) VALUES
    ("President"),
    ("Representative in Congress, District 2"),
    ("Representative in Congress, District 3"),
    ("Representative in Congress, District 7"),
    ("Mayor"),
    ("President City Council"),
    ("Comptroller"),
    ("City Council (1)"),
    ("City Council (2)"),
    ("City Council (3)"),
    ("City Council (4)"),
    ("City Council (5)"),
    ("City Council (6)"),
    ("City Council (7)"),
    ("City Council (8)"),
    ("City Council (9)"),
    ("City Council (10)"),
    ("City Council (11)"),
    ("City Council (12)"),
    ("City Council (13)"),
    ("City Council (14)"),
    ("Judge of Circuit Court"),
    ("Judge of Court of Appeals"),
    ("Judge of Court of Special Appeals at Large"),
    ("Question 1"),
    ("Question 2"),
    ("Question A"),
    ("Question B"),
    ("Question C"),
    ("Question D"),
    ("Question E"),
    ("Question F"),
    ("Question G"),
    ("Question H"),
    ("Question I"),
    ("Question J"),
    ("Question K");

SET @county_id := 3;
DELETE FROM `county_race` where county_id=@county_id;

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "president" FROM `race` WHERE name="President";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "representative_congress_2" FROM `race` WHERE name="Representative in Congress, District 2";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "representative_congress_3" FROM `race` WHERE name="Representative in Congress, District 3";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "representative_congress_7" FROM `race` WHERE name="Representative in Congress, District 7";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "mayor" FROM `race` WHERE name="Mayor";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "president_city_council" FROM `race` WHERE name="President City Council";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "comptroller" FROM `race` WHERE name="Comptroller";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "city_council_1" FROM `race` WHERE name="City Council (1)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "city_council_2" FROM `race` WHERE name="City Council (2)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "city_council_3" FROM `race` WHERE name="City Council (3)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "city_council_4" FROM `race` WHERE name="City Council (4)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "city_council_5" FROM `race` WHERE name="City Council (5)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "city_council_6" FROM `race` WHERE name="City Council (6)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "city_council_7" FROM `race` WHERE name="City Council (7)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "city_council_8" FROM `race` WHERE name="City Council (8)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "city_council_9" FROM `race` WHERE name="City Council (9)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "city_council_10" FROM `race` WHERE name="City Council (10)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "city_council_11" FROM `race` WHERE name="City Council (11)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "city_council_12" FROM `race` WHERE name="City Council (12)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "city_council_13" FROM `race` WHERE name="City Council (13)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "city_council_14" FROM `race` WHERE name="City Council (14)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "judge_circuit_court_1" FROM `race` WHERE name="Judge of Circuit Court";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "judge_circuit_court_2" FROM `race` WHERE name="Judge of Circuit Court";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "judge_circuit_court_3" FROM `race` WHERE name="Judge of Circuit Court";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "judge_circuit_court_4" FROM `race` WHERE name="Judge of Circuit Court";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "judge_circuit_court_5" FROM `race` WHERE name="Judge of Circuit Court";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "judge_court_special_appeals_at_large" FROM `race` WHERE name="Judge of Court of Special Appeals at Large";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "q1" FROM `race` WHERE name="Question 1";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "q2" FROM `race` WHERE name="Question 2";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "qa" FROM `race` WHERE name="Question A";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "qb" FROM `race` WHERE name="Question B";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "qc" FROM `race` WHERE name="Question C";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "qd" FROM `race` WHERE name="Question D";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "qe" FROM `race` WHERE name="Question E";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "qf" FROM `race` WHERE name="Question F";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "qg" FROM `race` WHERE name="Question G";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "qh" FROM `race` WHERE name="Question H";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "qi" FROM `race` WHERE name="Question I";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "qj" FROM `race` WHERE name="Question J";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "qk" FROM `race` WHERE name="Question K";

COMMIT;
