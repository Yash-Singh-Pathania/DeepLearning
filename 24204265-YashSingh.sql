
-- Yash Singh Pathania 
-- 24204265

-- ==========================================================
-- PART 1: NEW FRANCHISE – "Minions" with 2 released movies
-- ==========================================================
Use movies;
-- Insert the new franchise "Minions"
INSERT INTO franchises (name, studio)
  VALUES ('Minions', 'Universal Pictures');
SET @fid_minions_franchise = LAST_INSERT_ID();

-- Movie 1: Minions: The Rise of Gru (2022)
INSERT INTO features (title, year, type)
  VALUES ('Minions: The Rise of Gru', 2022, 'movie');
SET @fid_rise = LAST_INSERT_ID();

-- Add sample crew/cast for "Minions: The Rise of Gru"
INSERT INTO feature_work (feature_id, person, job)
  VALUES (@fid_rise, 'Kyle Balda', 'director');
INSERT INTO feature_role (feature_id, person, role)
  VALUES (@fid_rise, 'Steve Carell', 'Lead');
SET @role_id_rise = LAST_INSERT_ID();
INSERT INTO role_type (role_id, role_type)
  VALUES (@role_id_rise, 'protagonist');

-- Insert financial figures for "Minions: The Rise of Gru"
INSERT INTO budget (feature_id, currency_id, amount)
  VALUES (@fid_rise, 1, 80000000);
INSERT INTO domestic_gross (feature_id, currency_id, amount)
  VALUES (@fid_rise, 1, 120000000);
INSERT INTO international_gross (feature_id, currency_id, amount)
  VALUES (@fid_rise, 1, 180000000);

-- Associate with the new "Minions" franchise (as film number 1)
INSERT INTO franchise_features (feature_id, franchise_id, franchise_number)
  VALUES (@fid_rise, @fid_minions_franchise, 1);


-- Movie 2: Despicable Me 4 (2024)
INSERT INTO features (title, year, type)
  VALUES ('Despicable Me 4', 2024, 'movie');
SET @fid_dm4 = LAST_INSERT_ID();

-- Add sample crew/cast for "Despicable Me 4"
INSERT INTO feature_work (feature_id, person, job)
  VALUES (@fid_dm4, 'Kyle Balda', 'director');
INSERT INTO feature_role (feature_id, person, role)
  VALUES (@fid_dm4, 'Steve Carell', 'Lead');
SET @role_id_dm4 = LAST_INSERT_ID();
INSERT INTO role_type (role_id, role_type)
  VALUES (@role_id_dm4, 'protagonist');

-- Insert financial figures for "Despicable Me 4"
INSERT INTO budget (feature_id, currency_id, amount)
  VALUES (@fid_dm4, 1, 110000000);
INSERT INTO domestic_gross (feature_id, currency_id, amount)
  VALUES (@fid_dm4, 1, 160000000);
INSERT INTO international_gross (feature_id, currency_id, amount)
  VALUES (@fid_dm4, 1, 210000000);

-- Associate with the new "Minions" franchise (as film number 2)
INSERT INTO franchise_features (feature_id, franchise_id, franchise_number)
  VALUES (@fid_dm4, @fid_minions_franchise, 2);


-- ==========================================================
-- PART 2: ADD 3 NEW MOVIES TO AN EXISTING FRANCHISE ("DC Extended Universe")
-- (The "DC Extended Universe" franchise already exists in the  database.)
-- NOTE Since two movies already exist in the franchise, the new movies will be numbered 3, 4, and 5. (for consistency)
-- ==========================================================

-- Retrieve the franchise_id for "DC Extended Universe"
SET @dc_franchise = (SELECT franchise_id FROM franchises WHERE name = 'DC Extended Universe' LIMIT 1);

-- Movie 3: Wonder Woman (2017)
INSERT INTO features (title, year, type)
  VALUES ('Wonder Woman', 2017, 'movie');
SET @fid_wonder = LAST_INSERT_ID();

-- Add sample crew/cast for "Wonder Woman"
INSERT INTO feature_work (feature_id, person, job)
  VALUES (@fid_wonder, 'Patty Jenkins', 'director');
INSERT INTO feature_role (feature_id, person, role)
  VALUES (@fid_wonder, 'Gal Gadot', 'Lead');
SET @role_id_wonder = LAST_INSERT_ID();
INSERT INTO role_type (role_id, role_type)
  VALUES (@role_id_wonder, 'protagonist');

-- Insert financial figures for "Wonder Woman"
INSERT INTO budget (feature_id, currency_id, amount)
  VALUES (@fid_wonder, 1, 120000000);
INSERT INTO domestic_gross (feature_id, currency_id, amount)
  VALUES (@fid_wonder, 1, 200000000);
INSERT INTO international_gross (feature_id, currency_id, amount)
  VALUES (@fid_wonder, 1, 300000000);

-- Associate "Wonder Woman" with the DC Extended Universe (as film number 1)
INSERT INTO franchise_features (feature_id, franchise_id, franchise_number)
  VALUES (@fid_wonder, @dc_franchise, 3);


-- Movie 4: Aquaman (2018)
INSERT INTO features (title, year, type)
  VALUES ('Aquaman', 2018, 'movie');
SET @fid_aquaman = LAST_INSERT_ID();

-- Add sample crew/cast for "Aquaman"
INSERT INTO feature_work (feature_id, person, job)
  VALUES (@fid_aquaman, 'James Wan', 'director');
INSERT INTO feature_role (feature_id, person, role)
  VALUES (@fid_aquaman, 'Jason Momoa', 'Lead');
SET @role_id_aquaman = LAST_INSERT_ID();
INSERT INTO role_type (role_id, role_type)
  VALUES (@role_id_aquaman, 'protagonist');

-- Insert financial figures for "Aquaman"
INSERT INTO budget (feature_id, currency_id, amount)
  VALUES (@fid_aquaman, 1, 160000000);
INSERT INTO domestic_gross (feature_id, currency_id, amount)
  VALUES (@fid_aquaman, 1, 220000000);
INSERT INTO international_gross (feature_id, currency_id, amount)
  VALUES (@fid_aquaman, 1, 320000000);

-- Associate "Aquaman" with the DC Extended Universe (as film number 2)
INSERT INTO franchise_features (feature_id, franchise_id, franchise_number)
  VALUES (@fid_aquaman, @dc_franchise, 4);


-- Movie 5: Shazam! (2019)
INSERT INTO features (title, year, type)
  VALUES ('Shazam!', 2019, 'movie');
SET @fid_shazam = LAST_INSERT_ID();

-- Add sample crew/cast for "Shazam!"
INSERT INTO feature_work (feature_id, person, job)
  VALUES (@fid_shazam, 'David F. Sandberg', 'director');
INSERT INTO feature_role (feature_id, person, role)
  VALUES (@fid_shazam, 'Zachary Levi', 'Lead');
SET @role_id_shazam = LAST_INSERT_ID();
INSERT INTO role_type (role_id, role_type)
  VALUES (@role_id_shazam, 'protagonist');

-- Insert financial figures for "Shazam!"
INSERT INTO budget (feature_id, currency_id, amount)
  VALUES (@fid_shazam, 1, 90000000);
INSERT INTO domestic_gross (feature_id, currency_id, amount)
  VALUES (@fid_shazam, 1, 130000000);
INSERT INTO international_gross (feature_id, currency_id, amount)
  VALUES (@fid_shazam, 1, 190000000);

-- Associate "Shazam!" with the DC Extended Universe (as film number 3)
INSERT INTO franchise_features (feature_id, franchise_id, franchise_number)
  VALUES (@fid_shazam, @dc_franchise, 5);

-- Thank you for going throuhg my assignemnt have a  good day ^-^ 
-- Yash Singh Pathania 
-- 2420426
-- yash.pathania@ucdconnect.ie

