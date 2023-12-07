START TRANSACTION;
DROP TABLE IF EXISTS `cvr_2020_4_raw`;
CREATE TABLE `cvr_2020_4_raw` (
  `record` int(11) NOT NULL PRIMARY KEY,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `president` tinytext NOT NULL,
  `representative_congress_1` tinytext NOT NULL,
  `representative_congress_2` tinytext NOT NULL,
  `representative_congress_3` tinytext NOT NULL,
  `representative_congress_7` tinytext NOT NULL,
  `judge_circuit_court_1` tinytext NOT NULL,
  `judge_circuit_court_2` tinytext NOT NULL,
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
  `qj` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2020 Baltimore County';

INSERT IGNORE INTO `race` (`name`) VALUES
    ("President"),
    ("Representative in Congress, District 1"),
    ("Representative in Congress, District 2"),
    ("Representative in Congress, District 3"),
    ("Representative in Congress, District 7"),
    ("Judge of Circuit Court"),
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
    ("Question J");

SET @county_id := 4;
DELETE FROM `county_race` where county_id=@county_id;

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "president" FROM `race` WHERE name="President";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "representative_congress_1" FROM `race` WHERE name="Representative in Congress, District 1";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "representative_congress_2" FROM `race` WHERE name="Representative in Congress, District 2";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "representative_congress_3" FROM `race` WHERE name="Representative in Congress, District 3";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "representative_congress_7" FROM `race` WHERE name="Representative in Congress, District 7";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "judge_circuit_court_1" FROM `race` WHERE name="Judge of Circuit Court";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "judge_circuit_court_2" FROM `race` WHERE name="Judge of Circuit Court";

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

COMMIT;
