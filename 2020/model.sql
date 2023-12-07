START TRANSACTION;
CREATE TABLE `county` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Counties';

ALTER TABLE `county`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_name` (`name`);

INSERT INTO `county` (`id`, `name`) VALUES
(1, 'Allegany'),
(2, 'Anne Arundel'),
(4, 'Baltimore'),
(3, 'Baltimore City'),
(5, 'Calvert'),
(6, 'Caroline'),
(7, 'Carroll'),
(8, 'Cecil'),
(9, 'Charles'),
(10, 'Dorchester'),
(11, 'Frederick'),
(12, 'Garrett'),
(13, 'Harford'),
(14, 'Howard'),
(15, 'Kent'),
(16, 'Montgomery'),
(17, 'Prince George\'s'),
(18, 'Queen Anne\'s'),
(19, 'Saint Mary\'s'),
(20, 'Somerset'),
(21, 'Talbot'),
(22, 'Washington'),
(23, 'Wicomico'),
(24, 'Worchester');

CREATE TABLE `county_race` (
  `county_id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `raw_column` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Link table';
COMMIT;

ALTER TABLE `county_race`
  ADD KEY `fk_race_2` (`race_id`),
  ADD KEY `fk_county_2` (`county_id`),
  ADD CONSTRAINT `idx_county_race` UNIQUE (`county_id`, `race_id`, `raw_column`);

CREATE TABLE `county_summary` (
  `date` date NOT NULL,
  `county` varchar(255) NOT NULL,
  `party` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `new` int(11) DEFAULT NULL,
  `removed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='County summary';

ALTER TABLE `county_summary`
  ADD UNIQUE KEY `date_county_party` (`date`,`county`,`party`);

CREATE TABLE `county_turnout` (
  `county_id` int(11) NOT NULL,
  `evcount` int(11) NOT NULL COMMENT 'Early vote turnout',
  `edcount` int(11) NOT NULL COMMENT 'Election Day turnout',
  `mibcount` int(11) NOT NULL COMMENT 'Mail-in ballot turnout',
  `pcount` int(11) NOT NULL COMMENT 'Provisional ballot turnout'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='https://elections.maryland.gov/press_room/index.html';

ALTER TABLE `county_turnout`
  ADD KEY `fk_county_turnout__county_id` (`county_id`);

CREATE TABLE `race` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Races';

ALTER TABLE `race`
  ADD UNIQUE KEY `idx_name` (`name`);

CREATE TABLE `race_stats` (
  `county_id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `vcount` int(11) NOT NULL COMMENT 'Total vote count'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `race_stats`
  ADD PRIMARY KEY (`county_id`,`race_id`),
  ADD KEY `fk_race_0C13` (`race_id`);

CREATE TABLE `cvr_2020_graph` (
  `county_id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `record` int(11) NOT NULL,
  `candidate` varchar(255) NOT NULL,
  `vcount` int(11) DEFAULT NULL COMMENT 'Vote counter',
  `ccount` int(11) DEFAULT NULL COMMENT 'Cumulative counter'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='CVR graph data';

ALTER TABLE `cvr_2020_graph`
  ADD KEY `idx_county_race_record` (`county_id`,`race_id`,`record`) USING BTREE,
  ADD KEY `fk_race_1` (`race_id`);

-- Foreign keys

ALTER TABLE `county_race`
  ADD CONSTRAINT `fk_county_2` FOREIGN KEY (`county_id`) REFERENCES `county` (`id`),
  ADD CONSTRAINT `fk_race_2` FOREIGN KEY (`race_id`) REFERENCES `race` (`id`);

ALTER TABLE `county_turnout`
  ADD CONSTRAINT `fk_county_turnout__county_id` FOREIGN KEY (`county_id`) REFERENCES `county` (`id`);

ALTER TABLE `race_stats`
  ADD CONSTRAINT `fk_county_0C13` FOREIGN KEY (`county_id`) REFERENCES `county` (`id`),
  ADD CONSTRAINT `fk_race_0C13` FOREIGN KEY (`race_id`) REFERENCES `race` (`id`);

ALTER TABLE `cvr_2020_graph`
  ADD CONSTRAINT `fk_county_1` FOREIGN KEY (`county_id`) REFERENCES `county` (`id`),
  ADD CONSTRAINT `fk_race_1` FOREIGN KEY (`race_id`) REFERENCES `race` (`id`);
