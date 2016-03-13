-- Wonder Consolation Prizes

UPDATE Language_en_US
SET Text = '{@1_CityName} can no longer work on {@2_BldgName}. The lost [ICON_PRODUCTION] is converted into {3_NumGold}[ICON_CULTURE]!'
WHERE Tag = 'TXT_KEY_MISC_LOST_WONDER_PROD_CONVERTED' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 2 );

UPDATE Language_en_US
SET Text = '{@1_CityName} can no longer work on {@2_BldgName}. The lost [ICON_PRODUCTION] is converted into {3_NumGold}[ICON_GOLDEN_AGE]!'
WHERE Tag = 'TXT_KEY_MISC_LOST_WONDER_PROD_CONVERTED' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 3 );

UPDATE Language_en_US
SET Text = '{@1_CityName} can no longer work on {@2_BldgName}. The lost [ICON_PRODUCTION] is converted into {3_NumGold}[ICON_RESEARCH]!'
WHERE Tag = 'TXT_KEY_MISC_LOST_WONDER_PROD_CONVERTED' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 4 );

UPDATE Language_en_US
SET Text = '{@1_CityName} can no longer work on {@2_BldgName}. The lost [ICON_PRODUCTION] is converted into {3_NumGold}[ICON_PEACE]!'
WHERE Tag = 'TXT_KEY_MISC_LOST_WONDER_PROD_CONVERTED' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 5 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_WONDER_BEATEN_CONSOLATION_PRIZE', '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 1 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_WONDER_BEATEN_CONSOLATION_PRIZE', '2'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 2 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_WONDER_BEATEN_CONSOLATION_PRIZE', '3'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 3 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_WONDER_BEATEN_CONSOLATION_PRIZE', '4'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 4 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_WONDER_BEATEN_CONSOLATION_PRIZE', '5'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK' AND Value= 5 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CULTURE_PERCENTAGE_VALUE', '33'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK_ENABLER' AND Value= 1 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_GA_PERCENTAGE_VALUE', '25'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK_ENABLER' AND Value= 1 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SCIENCE_PERCENTAGE_VALUE', '10'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK_ENABLER' AND Value= 1 );
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_FAITH_PERCENTAGE_VALUE', '10'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_WONDER_CONSOLATION_TWEAK_ENABLER' AND Value= 1 );