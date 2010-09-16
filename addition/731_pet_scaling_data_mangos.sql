-- Pet scaling data table from /dev/rsa

CREATE TABLE IF NOT EXISTS `pet_scaling_data` (
  `creature_entry` mediumint(8) unsigned NOT NULL,
  `aura` mediumint(8) unsigned NOT NULL default '0',
  `healthbase` mediumint(8) NOT NULL default '0',
  `health` mediumint(8) NOT NULL default '0',
  `powerbase` mediumint(8) NOT NULL default '0',
  `power` mediumint(8) NOT NULL default '0',
  `str` mediumint(8) NOT NULL default '0',
  `agi` mediumint(8) NOT NULL default '0',
  `sta` mediumint(8) NOT NULL default '0',
  `inte` mediumint(8) NOT NULL default '0',
  `spi` mediumint(8) NOT NULL default '0',
  `armor` mediumint(8) NOT NULL default '0',
  `resistance1` mediumint(8) NOT NULL default '0',
  `resistance2` mediumint(8) NOT NULL default '0',
  `resistance3` mediumint(8) NOT NULL default '0',
  `resistance4` mediumint(8) NOT NULL default '0',
  `resistance5` mediumint(8) NOT NULL default '0',
  `resistance6` mediumint(8) NOT NULL default '0',
  `apbase` mediumint(8) NOT NULL default '0',
  `apbasescale` mediumint(8) NOT NULL default '0',
  `attackpower` mediumint(8) NOT NULL default '0',
  `damage` mediumint(8) NOT NULL default '0',
  `spellpower` mediumint(8) NOT NULL default '0',
  `hit` mediumint(8) NOT NULL default '0',
  `expertize` mediumint(8) NOT NULL default '0',
  `attackspeed` mediumint(8) NOT NULL default '0',
  `crit` mediumint(8) NOT NULL default '0',
  PRIMARY KEY  (`creature_entry`,`aura`)
) DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='Stores pet scaling data (in percent from owner value).';

-- Creature 0 (default) - MUST be exist!
DELETE FROM `pet_scaling_data` WHERE `creature_entry` = 0;
INSERT INTO `pet_scaling_data` (`creature_entry`, `aura`, `healthbase`, `health`, `powerbase`, `power`, `str`, `agi`, `sta`, `inte`, `spi`, `armor`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `apbase`, `apbasescale`, `attackpower`, `damage`, `spellpower`, `hit`, `expertize`, `attackspeed`, `crit`) VALUES
(0, 0, 0, 1000, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 200, 0, 0, 0, 100, 100, 100, 0);

-- Pet 1 - default hunter pet
DELETE FROM `pet_scaling_data` WHERE `creature_entry` = 1;
INSERT INTO `pet_scaling_data` (`creature_entry`, `aura`, `healthbase`, `health`, `powerbase`, `power`, `str`, `agi`, `sta`, `inte`, `spi`, `armor`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `apbase`, `apbasescale`, `attackpower`, `damage`, `spellpower`, `hit`, `expertize`, `attackspeed`, `crit`) VALUES
(1, 0, 0, 1000, 0, 1500, 0, 0, 30, 0, 0, 35, 40, 40, 40, 40, 40, 40, 20, 200, 22, 13, 0, 100, 100, 100, 0),
(1, 62758, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0),
(1, 62762, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0);

-- Pet 26611 - shaman spirit wolf
DELETE FROM `pet_scaling_data` WHERE `creature_entry` = 29264;
INSERT INTO `pet_scaling_data` (`creature_entry`, `aura`, `healthbase`, `health`, `powerbase`, `power`, `str`, `agi`, `sta`, `inte`, `spi`, `armor`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `apbase`, `apbasescale`, `attackpower`, `damage`, `spellpower`, `hit`, `expertize`, `attackspeed`, `crit`) VALUES
(29264, 0, 0, 1000, 0, 1500, 0, 0, 30, 0, 0, 35, 40, 40, 40, 40, 40, 40, 20, 200, 22, 13, 0, 100, 100, 100, 0),
(29264, 62758, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0),
(29264, 62762, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0),
(29264, 63271, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Pet 26125 - DK ghoul
DELETE FROM `pet_scaling_data` WHERE `creature_entry` = 26125;
INSERT INTO `pet_scaling_data` (`creature_entry`, `aura`, `healthbase`, `health`, `powerbase`, `power`, `str`, `agi`, `sta`, `inte`, `spi`, `armor`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `apbase`, `apbasescale`, `attackpower`, `damage`, `spellpower`, `hit`, `expertize`, `attackspeed`, `crit`) VALUES
(26125,     0, 0, 1000, 0, 0, 70, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 200, 0, 0, 0, 100, 100, 100, 0),
(26125, 48965, 0,    0, 0, 0, 20, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26125, 49571, 0,    0, 0, 0, 20, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26125, 58721, 0,    0, 0, 0, 40, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Pet 416 - warlock imp
DELETE FROM `pet_scaling_data` WHERE `creature_entry` = 416;
INSERT INTO `pet_scaling_data` (`creature_entry`, `aura`, `healthbase`, `health`, `powerbase`, `power`, `str`, `agi`, `sta`, `inte`, `spi`, `armor`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `apbase`, `apbasescale`, `attackpower`, `damage`, `spellpower`, `hit`, `expertize`, `attackspeed`, `crit`) VALUES
(416, 0, 0, 840, 0, 495, 0, 0, 75, 30, 0, 35, 40, 40, 40, 40, 40, 40, 10, 100, 15, 57, 0, 100, 100, 100, 0);

-- Pet 417 - warlock felhunter
DELETE FROM `pet_scaling_data` WHERE `creature_entry` = 417;
INSERT INTO `pet_scaling_data` (`creature_entry`, `aura`, `healthbase`, `health`, `powerbase`, `power`, `str`, `agi`, `sta`, `inte`, `spi`, `armor`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `apbase`, `apbasescale`, `attackpower`, `damage`, `spellpower`, `hit`, `expertize`, `attackspeed`, `crit`) VALUES
(417, 0, 0, 950, 0, 1150, 0, 0, 75, 30, 0, 35, 40, 40, 40, 40, 40, 40, 20, 200, 15, 57, 0, 100, 100, 100, 0);

-- Pet 1860 - warlock voidwalker
DELETE FROM `pet_scaling_data` WHERE `creature_entry` = 1860;
INSERT INTO `pet_scaling_data` (`creature_entry`, `aura`, `healthbase`, `health`, `powerbase`, `power`, `str`, `agi`, `sta`, `inte`, `spi`, `armor`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `apbase`, `apbasescale`, `attackpower`, `damage`, `spellpower`, `hit`, `expertize`, `attackspeed`, `crit`) VALUES
(1860, 0, 0, 1100, 0, 1150, 0, 0, 75, 30, 0, 35, 40, 40, 40, 40, 40, 40, 20, 200, 15, 57, 0, 100, 100, 100, 0),
(1860, 57277, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Pet 1863 - warlock succubus
DELETE FROM `pet_scaling_data` WHERE `creature_entry` = 1863;
INSERT INTO `pet_scaling_data` (`creature_entry`, `aura`, `healthbase`, `health`, `powerbase`, `power`, `str`, `agi`, `sta`, `inte`, `spi`, `armor`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `apbase`, `apbasescale`, `attackpower`, `damage`, `spellpower`, `hit`, `expertize`, `attackspeed`, `crit`) VALUES
(1863, 0, 0, 910, 0, 1150, 0, 0, 75, 30, 0, 35, 40, 40, 40, 40, 40, 40, 20, 200, 15, 57, 0, 100, 100, 100, 0);

-- Pet 17252 - warlock felguard
DELETE FROM `pet_scaling_data` WHERE `creature_entry` = 17252;
INSERT INTO `pet_scaling_data` (`creature_entry`, `aura`, `healthbase`, `health`, `powerbase`, `power`, `str`, `agi`, `sta`, `inte`, `spi`, `armor`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `apbase`, `apbasescale`, `attackpower`, `damage`, `spellpower`, `hit`, `expertize`, `attackspeed`, `crit`) VALUES
(17252, 0, 0, 1100, 0, 1150, 0, 0, 75, 30, 0, 35, 40, 40, 40, 40, 40, 40, 20, 200, 15, 57, 0, 100, 100, 100, 0);
