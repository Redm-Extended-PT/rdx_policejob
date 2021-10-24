USE `redm_extended`;

INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_police', 'Policia', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_police', 'Policia', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
  ('society_police', 'Policia', 1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('police','Policia')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('police',0,'recruit','Ajudante',20,'{}','{}'),
	('police',1,'officer','Delegado',40,'{}','{}'),
	('police',2,'boss','Sheriff',100,'{}','{}')
;