--Monarchy

UPDATE Policies
SET CapitalUnhappinessMod = '0'
WHERE Type = 'POLICY_MONARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET PovertyHappinessModCapital = '-10'
WHERE Type = 'POLICY_MONARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET DefenseHappinessModCapital = '-10'
WHERE Type = 'POLICY_MONARCHY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Monarchy[ENDCOLOR][NEWLINE]+1 [ICON_GOLD] Gold for every 2 [ICON_CITIZEN] Citizens in the [ICON_CAPITAL] Capital, and reduces [ICON_HAPPINESS_3] Poverty and Disorder by 10% in the [ICON_CAPITAL] Capital.'
WHERE Tag = 'TXT_KEY_POLICY_MONARCHY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

-- POLICY_MERITOCRACY

UPDATE Policies
SET PovertyHappinessMod = '-10'
WHERE Type = 'POLICY_MERITOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET UnhappinessMod = '0'
WHERE Type = 'POLICY_MERITOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Meritocracy[ENDCOLOR][NEWLINE]+1 [ICON_HAPPINESS_1] Happiness for each City you own [ICON_CONNECTED] connected to the [ICON_CAPITAL] Capital and reduces [ICON_HAPPINESS_3] Poverty by 10% in all Cities.'
WHERE Tag = 'TXT_KEY_POLICY_MERITOCRACY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

-- POLICY_ARISTOCRACY

UPDATE Policies
SET IlliteracyHappinessModCapital = '-10'
WHERE Type = 'POLICY_ARISTOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET HappinessPerXPopulation = '0'
WHERE Type = 'POLICY_ARISTOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Aristocracy[ENDCOLOR][NEWLINE]+15% [ICON_PRODUCTION] Production when building Wonders and reduces [ICON_HAPPINESS_3] Illiteracy by 10% in the [ICON_CAPITAL] Capital.'
WHERE Tag = 'TXT_KEY_POLICY_ARISTOCRACY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );


-- POLICY_MILITARY_CASTE

UPDATE Policies
SET DefenseHappinessMod = '-10'
WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET HappinessPerGarrisonedUnit = '0'
WHERE Type = 'POLICY_MILITARY_CASTE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Military Caste[ENDCOLOR][NEWLINE]Each City with a garrison increases empire [ICON_CULTURE] Culture by 2. Reduces [ICON_HAPPINESS_3] Disorder by 10% in all Cities.'
WHERE Tag = 'TXT_KEY_POLICY_MILITARY_CASTE_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );


-- POLICY_PROTECTIONISM
UPDATE Policies
SET PovertyHappinessMod = '-10'
WHERE Type = 'POLICY_PROTECTIONISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET PovertyHappinessModCapital = '-10'
WHERE Type = 'POLICY_PROTECTIONISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET ExtraHappinessPerLuxury = '0'
WHERE Type = 'POLICY_PROTECTIONISM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Protectionism[ENDCOLOR][NEWLINE]Reduces [ICON_HAPPINESS_3] Poverty by 10% in all Cities and an additional 10% in [ICON_CAPITAL] Capital.'
WHERE Tag = 'TXT_KEY_POLICY_PROTECTIONISM_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

-- POLICY_FREE_RELIGION
UPDATE Policies
SET MinorityHappinessMod = '-25'
WHERE Type = 'POLICY_FREE_RELIGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Policies
SET MinorityHappinessModCapital = '-25'
WHERE Type = 'POLICY_FREE_RELIGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Religious Tolerance[ENDCOLOR][NEWLINE]Cities with a majority religion also get the Pantheon belief bonus of the second most popular religion. Reduces [ICON_HAPPINESS_3] Religious Strife by 25% in all Cities and an additional 25% in [ICON_CAPITAL] Capital.'
WHERE Tag = 'TXT_KEY_POLICY_FREE_RELIGION_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

-- POLICY_HONOR_FINISHER

UPDATE Policies
SET PuppetUnhappinessModPolicy = '-20'
WHERE Type = 'POLICY_HONOR_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Honor[ENDCOLOR] improves the effectiveness of your army in a variety of ways.[NEWLINE][NEWLINE]Adopting Honor gives a +25% combat bonus VS Barbarians, and notifications will be provided when new Barbarian Encampments spawn in revealed territory. Gain [ICON_CULTURE] Culture for the empire from each barbarian killed.[NEWLINE][NEWLINE]Adopting all policies in the Honor tree will grant [ICON_GOLD] Gold for each enemy unit killed, and [ICON_HAPPINESS_3] Unhappiness generated by [ICON_PUPPET] Puppet Cities will be reduced by 20%.'
WHERE Tag = 'TXT_KEY_POLICY_BRANCH_HONOR_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

-- POLICY_PIETY

UPDATE Policies
SET IlliteracyHappinessMod = '-10'
WHERE Type = 'POLICY_PIETY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Piety[ENDCOLOR] increases the [ICON_PEACE] Faith of empires.[NEWLINE][NEWLINE]Adopting Piety allows you to build Shrines and Temples in half the usual time, and reduces [ICON_HAPPINESS_3] Illiteracy by 10% in all Cities. Unlocks building the Great Mosque of Djenne.[NEWLINE][NEWLINE]Adopting all Policies in the Piety tree causes a Great Prophet to appear and Holy Sites provide +3 [ICON_CULTURE] Culture.'
WHERE Tag = 'TXT_KEY_POLICY_BRANCH_PIETY_HELP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_CITY_HAPPINESS' AND Value= 1 );