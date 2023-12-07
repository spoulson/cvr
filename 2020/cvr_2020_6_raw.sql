START TRANSACTION;
DROP TABLE IF EXISTS `cvr_2020_6_raw`;
CREATE TABLE `cvr_2020_6_raw` (
  `record` int(11) NOT NULL PRIMARY KEY,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `president` tinytext NOT NULL,
  `representative_congress_1` tinytext NOT NULL,
  `judge_court_appeals` tinytext NOT NULL,
  `judge_court_special_appeals_at_large` tinytext NOT NULL,
  `judge_court_special_appeals` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2020 Caroline County';

INSERT IGNORE INTO `race` (`name`) VALUES
    ("President"),
    ("Representative in Congress, District 1"),
    ("Judge of Court of Appeals"),
    ("Judge of Court of Special Appeals at Large"),
    ("Judge of Court of Special Appeals"),
    ("Board of Education (1)"),
    ("Board of Education (2)"),
    ("Question 1"),
    ("Question 2");

SET @county_id := 6;
DELETE FROM `county_race` where county_id=@county_id;

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "president" FROM `race` WHERE name="President";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "representative_congress_1" FROM `race` WHERE name="Representative in Congress, District 1";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "judge_court_appeals" FROM `race` WHERE name="Judge of Court of Appeals";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "judge_court_special_appeals_at_large" FROM `race` WHERE name="Judge of Court of Special Appeals at Large";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "judge_court_special_appeals" FROM `race` WHERE name="Judge of Court of Special Appeals";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "board_of_education_1" FROM `race` WHERE name="Board of Education (1)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "board_of_education_2" FROM `race` WHERE name="Board of Education (2)";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "q1" FROM `race` WHERE name="Question 1";

INSERT INTO `county_race` (`county_id`, `race_id`, `raw_column`)
SELECT @county_id, id, "q2" FROM `race` WHERE name="Question 2";

COMMIT;
