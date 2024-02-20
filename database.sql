DROP DATABASE IF EXISTS `human_friends`;

-- Создаем базу данных "human_friends", если ее еще нет
CREATE DATABASE IF NOT EXISTS `human_friends`;

-- Используем созданную базу данных
USE `human_friends`;

-- Создаем таблицу "animals"
CREATE TABLE `animals` (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY UNIQUE,
  animals_class VARCHAR(30)
);


-- Создаем таблицу "dogs" с внешним ключом на таблицу "animals"
CREATE TABLE `dogs` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`animal_class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Создаем таблицу "cats" с внешним ключом на таблицу "animals"
CREATE TABLE `cats` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`animal_class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Создаем таблицу "hamsters" с внешним ключом на таблицу "animals"
CREATE TABLE `hamsters` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`animal_class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);


-- Создаем таблицу "horses" с внешним ключом на таблицу "animals"
CREATE TABLE `horses` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`animal_class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Создаем таблицу "camels" с внешним ключом на таблицу "animals"
CREATE TABLE `camels` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`animal_class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Создаем таблицу "donkeys" с внешним ключом на таблицу "animals"
CREATE TABLE `donkeys` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`animal_class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Заполняем таблицу "animals"
INSERT INTO `human_friends`.`animals` (`id`, `animals_class`) VALUES ('1', 'pet'),('2', 'wild');

-- Заполняем таблицу "dogs"
INSERT INTO `human_friends`.`dogs` (`name`, `skills`, `birth_date`, `animal_class_id`) VALUES
  ('Бади', 'Сиди', '2019-02-10', 1),
  ('Макс', 'Дай лапу', '2018-06-15', 1),
  ('Бейли', 'Прыгай', '2020-01-05', 1),
  ('Луна', 'Вращение', '2016-12-08', 1);

-- Заполняем таблицу "cats"
INSERT INTO `human_friends`.`cats` (`name`, `skills`, `birth_date`, `animal_class_id`) VALUES
  ('Оливер', 'Мурлыкать', '2018-04-25', 1),
  ('Лео', 'Сон', '2019-07-10', 1),
  ('Мило', 'Охотиться', '2020-03-17', 1),
  ('Лилу', 'Развалиться, ', '2017-11-30', 1),
  ('Симба', 'Мяукать', '2016-09-12', 1);

-- Заполняем таблицу "hamsters"
INSERT INTO `human_friends`.`hamsters` (`name`, `skills`, `birth_date`, `animal_class_id`) VALUES
  ('Коко', 'Бег по колесу', '2021-01-03', 1),
  ('Пенат', 'Прятать еду,', '2022-02-14', 1),
  ('Орео', 'Лазить по трубам', '2020-11-20', 1),
  ('Бисквит', 'Копать', '2019-10-05', 1),
  ('Газель', 'Грыть', '2023-04-01', 1);

-- Заполняем таблицу "horses"
INSERT INTO `human_friends`.`horses` (`name`, `skills`, `birth_date`, `animal_class_id`) VALUES
  ('Спирит', 'Галоп', '2015-08-20', 2),
  ('Дейзи', 'Рысь', '2016-06-10', 2),
  ('Аполло', 'Выездка, галоп', '2017-03-15', 2),
  ('Вилл', 'Верховая езда', '2018-11-25', 2),
  ('Роки', ' Рейнинг', '2019-09-05', 2);

-- Заполняем таблицу "camels"
INSERT INTO `human_friends`.`camels` (`name`, `skills`, `birth_date`, `animal_class_id`) VALUES
  ('Сахара', 'Перевозка грузов', '2014-12-01', 2),
  ('Амир', 'Навигация по пустыне', '2015-10-18', 2),
  ('Зара', 'Верблюжьи бега', '2016-07-24', 2),
  ('Раджа', 'Производство молока', '2017-04-09', 2),
  ('Джамал', 'Адаптация', '2018-02-15', 2);

-- Заполняем таблицу "donkeys"
INSERT INTO `human_friends`.`donkeys` (`name`, `skills`, `birth_date`, `animal_class_id`) VALUES
  ('Джек', 'Нести груз, Рев', '2019-08-12', 2),
  ('Джени', 'Выпас, Охрана', '2020-05-05', 2),
  ('Молли', 'Вспашка, Товарищ', '2021-02-20', 2),
  ('Оскар', 'Упрямство, буксировка', '2022-09-10', 2),
  ('Роуз', 'Обучение трюкам, Терапия', '2023-06-05', 2);
  
-- Удалить таблицу "camels"
  DROP TABLE `human_friends`.`camels`;
  
-- Объединить таблицы "horses", и "donkeys" в одну таблицу
-- Создаем новую таблицу "horses_and_donkeys" для объединения "horses" и "donkeys"
CREATE TABLE `horses_and_donkeys` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  `species` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`)
);

-- Вставляем данные из "horses" в таблицу "horses_and_donkeys"
INSERT INTO `horses_and_donkeys` (`name`, `skills`, `birth_date`, `animal_class_id`, `species`)
SELECT `name`, `skills`, `birth_date`, `animal_class_id`, 'Horse' AS `species`
FROM `horses`;

-- Вставляем данные из "donkeys" в таблицу "horses_and_donkeys"
INSERT INTO `horses_and_donkeys` (`name`, `skills`, `birth_date`, `animal_class_id`, `species`)
SELECT `name`, `skills`, `birth_date`, `animal_class_id`, 'Donkey' AS `species`
FROM `donkeys`;

-- Создаем новую таблицу "young_animals"
CREATE TABLE `young_animals` (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(50) NOT NULL,
  `species` VARCHAR(20) NOT NULL,
  `age_months` INT NOT NULL
);

-- Вставляем данные из таблиц `dogs`, `cats`, `donkeys`, `hamsters`, и `horses` в таблицу `young_animals`
INSERT INTO `young_animals` (`name`, `species`, `age_months`)
SELECT `name`, 'Dog' AS `species`, TIMESTAMPDIFF(MONTH, `birth_date`, CURDATE()) AS `age_months`
FROM `dogs`
WHERE `birth_date` <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `birth_date` >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `young_animals` (`name`, `species`, `age_months`)
SELECT `name`, 'Cat' AS `species`, TIMESTAMPDIFF(MONTH, `birth_date`, CURDATE()) AS `age_months`
FROM `cats`
WHERE `birth_date` <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `birth_date` >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `young_animals` (`name`, `species`, `age_months`)
SELECT `name`, 'Donkey' AS `species`, TIMESTAMPDIFF(MONTH, `birth_date`, CURDATE()) AS `age_months`
FROM `donkeys`
WHERE `birth_date` <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `birth_date` >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `young_animals` (`name`, `species`, `age_months`)
SELECT `name`, 'Hamster' AS `species`, TIMESTAMPDIFF(MONTH, `birth_date`, CURDATE()) AS `age_months`
FROM `hamsters`
WHERE `birth_date` <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `birth_date` >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `young_animals` (`name`, `species`, `age_months`)
SELECT `name`, 'Horse' AS `species`, TIMESTAMPDIFF(MONTH, `birth_date`, CURDATE()) AS `age_months`
FROM `horses`
WHERE `birth_date` <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `birth_date` >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

-- Создаем новую таблицу "all_animals"
CREATE TABLE `all_animals` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  `source_table` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`)
);

-- Вставляем данные из таблиц `dogs`, `cats`, `donkeys`, `hamsters`, и `horses` в таблицу `all_animals`
INSERT INTO `all_animals` (`name`, `skills`, `birth_date`, `animal_class_id`, `source_table`)
SELECT `name`, `skills`, `birth_date`, `animal_class_id`, 'dogs' AS `source_table`
FROM `dogs`;

INSERT INTO `all_animals` (`name`, `skills`, `birth_date`, `animal_class_id`, `source_table`)
SELECT `name`, `skills`, `birth_date`, `animal_class_id`, 'cats' AS `source_table`
FROM `cats`;

INSERT INTO `all_animals` (`name`, `skills`, `birth_date`, `animal_class_id`, `source_table`)
SELECT `name`, `skills`, `birth_date`, `animal_class_id`, 'donkeys' AS `source_table`
FROM `donkeys`;

INSERT INTO `all_animals` (`name`, `skills`, `birth_date`, `animal_class_id`, `source_table`)
SELECT `name`, `skills`, `birth_date`, `animal_class_id`, 'hamsters' AS `source_table`
FROM `hamsters`;

INSERT INTO `all_animals` (`name`, `skills`, `birth_date`, `animal_class_id`, `source_table`)
SELECT `name`, `skills`, `birth_date`, `animal_class_id`, 'horses' AS `source_table`
FROM `horses`;
