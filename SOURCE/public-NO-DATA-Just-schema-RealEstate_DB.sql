/*
 Source Server         : 127.0.0.1
 Source Server Type    : PostgreSQL
 Source Server Version : 160003
 Source Catalog        : RealEstate_DB
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 160003
 File Encoding         : 65001

 Date: 16/09/2024 19:59:51
*/


-- ----------------------------
-- Table structure for CITIES
-- ----------------------------
DROP TABLE IF EXISTS "public"."CITIES";
CREATE TABLE "public"."CITIES" (
  "city" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "state_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "lat" float8 NOT NULL,
  "lng" float8 NOT NULL,
  "RegionName" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "population" int4 NOT NULL,
  "state_name" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."CITIES" OWNER TO "postgres";

-- ----------------------------
-- Table structure for GDP
-- ----------------------------
DROP TABLE IF EXISTS "public"."GDP";
CREATE TABLE "public"."GDP" (
  "state_name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "2023_GDP" float8 NOT NULL
)
;
ALTER TABLE "public"."GDP" OWNER TO "postgres";

-- ----------------------------
-- Table structure for HOME_VALUES
-- ----------------------------
DROP TABLE IF EXISTS "public"."HOME_VALUES";
CREATE TABLE "public"."HOME_VALUES" (
  "RegionID" int4 NOT NULL,
  "SizeRank" int4 NOT NULL,
  "RegionName" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "RegionType" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "StateName" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "date_2015_01_31" float8 NOT NULL,
  "date_2015_02_28" float8 NOT NULL,
  "date_2015_03_31" float8 NOT NULL,
  "date_2015_04_30" float8 NOT NULL,
  "date_2015_05_31" float8 NOT NULL,
  "date_2015_06_30" float8 NOT NULL,
  "date_2015_07_31" float8 NOT NULL,
  "date_2015_08_31" float8 NOT NULL,
  "date_2015_09_30" float8 NOT NULL,
  "date_2015_10_31" float8 NOT NULL,
  "date_2015_11_30" float8 NOT NULL,
  "date_2015_12_31" float8 NOT NULL,
  "date_2016_01_31" float8 NOT NULL,
  "date_2016_02_29" float8 NOT NULL,
  "date_2016_03_31" float8 NOT NULL,
  "date_2016_04_30" float8 NOT NULL,
  "date_2016_05_31" float8 NOT NULL,
  "date_2016_06_30" float8 NOT NULL,
  "date_2016_07_31" float8 NOT NULL,
  "date_2016_08_31" float8 NOT NULL,
  "date_2016_09_30" float8 NOT NULL,
  "date_2016_10_31" float8 NOT NULL,
  "date_2016_11_30" float8 NOT NULL,
  "date_2016_12_31" float8 NOT NULL,
  "date_2017_01_31" float8 NOT NULL,
  "date_2017_02_28" float8 NOT NULL,
  "date_2017_03_31" float8 NOT NULL,
  "date_2017_04_30" float8 NOT NULL,
  "date_2017_05_31" float8 NOT NULL,
  "date_2017_06_30" float8 NOT NULL,
  "date_2017_07_31" float8 NOT NULL,
  "date_2017_08_31" float8 NOT NULL,
  "date_2017_09_30" float8 NOT NULL,
  "date_2017_10_31" float8 NOT NULL,
  "date_2017_11_30" float8 NOT NULL,
  "date_2017_12_31" float8 NOT NULL,
  "date_2018_01_31" float8 NOT NULL,
  "date_2018_02_28" float8 NOT NULL,
  "date_2018_03_31" float8 NOT NULL,
  "date_2018_04_30" float8 NOT NULL,
  "date_2018_05_31" float8 NOT NULL,
  "date_2018_06_30" float8 NOT NULL,
  "date_2018_07_31" float8 NOT NULL,
  "date_2018_08_31" float8 NOT NULL,
  "date_2018_09_30" float8 NOT NULL,
  "date_2018_10_31" float8 NOT NULL,
  "date_2018_11_30" float8 NOT NULL,
  "date_2018_12_31" float8 NOT NULL,
  "date_2019_01_31" float8 NOT NULL,
  "date_2019_02_28" float8 NOT NULL,
  "date_2019_03_31" float8 NOT NULL,
  "date_2019_04_30" float8 NOT NULL,
  "date_2019_05_31" float8 NOT NULL,
  "date_2019_06_30" float8 NOT NULL,
  "date_2019_07_31" float8 NOT NULL,
  "date_2019_08_31" float8 NOT NULL,
  "date_2019_09_30" float8 NOT NULL,
  "date_2019_10_31" float8 NOT NULL,
  "date_2019_11_30" float8 NOT NULL,
  "date_2019_12_31" float8 NOT NULL,
  "date_2020_01_31" float8 NOT NULL,
  "date_2020_02_29" float8 NOT NULL,
  "date_2020_03_31" float8 NOT NULL,
  "date_2020_04_30" float8 NOT NULL,
  "date_2020_05_31" float8 NOT NULL,
  "date_2020_06_30" float8 NOT NULL,
  "date_2020_07_31" float8 NOT NULL,
  "date_2020_08_31" float8 NOT NULL,
  "date_2020_09_30" float8 NOT NULL,
  "date_2020_10_31" float8 NOT NULL,
  "date_2020_11_30" float8 NOT NULL,
  "date_2020_12_31" float8 NOT NULL,
  "date_2021_01_31" float8 NOT NULL,
  "date_2021_02_28" float8 NOT NULL,
  "date_2021_03_31" float8 NOT NULL,
  "date_2021_04_30" float8 NOT NULL,
  "date_2021_05_31" float8 NOT NULL,
  "date_2021_06_30" float8 NOT NULL,
  "date_2021_07_31" float8 NOT NULL,
  "date_2021_08_31" float8 NOT NULL,
  "date_2021_09_30" float8 NOT NULL,
  "date_2021_10_31" float8 NOT NULL,
  "date_2021_11_30" float8 NOT NULL,
  "date_2021_12_31" float8 NOT NULL,
  "date_2022_01_31" float8 NOT NULL,
  "date_2022_02_28" float8 NOT NULL,
  "date_2022_03_31" float8 NOT NULL,
  "date_2022_04_30" float8 NOT NULL,
  "date_2022_05_31" float8 NOT NULL,
  "date_2022_06_30" float8 NOT NULL,
  "date_2022_07_31" float8 NOT NULL,
  "date_2022_08_31" float8 NOT NULL,
  "date_2022_09_30" float8 NOT NULL,
  "date_2022_10_31" float8 NOT NULL,
  "date_2022_11_30" float8 NOT NULL,
  "date_2022_12_31" float8 NOT NULL,
  "date_2023_01_31" float8 NOT NULL,
  "date_2023_02_28" float8 NOT NULL,
  "date_2023_03_31" float8 NOT NULL,
  "date_2023_04_30" float8 NOT NULL,
  "date_2023_05_31" float8 NOT NULL,
  "date_2023_06_30" float8 NOT NULL,
  "date_2023_07_31" float8 NOT NULL,
  "date_2023_08_31" float8 NOT NULL,
  "date_2023_09_30" float8 NOT NULL,
  "date_2023_10_31" float8 NOT NULL,
  "date_2023_11_30" float8 NOT NULL,
  "date_2023_12_31" float8 NOT NULL,
  "date_2024_01_31" float8 NOT NULL,
  "date_2024_02_29" float8 NOT NULL,
  "date_2024_03_31" float8 NOT NULL,
  "date_2024_04_30" float8 NOT NULL,
  "date_2024_05_31" float8 NOT NULL,
  "date_2024_06_30" float8 NOT NULL,
  "date_2024_07_31" float8 NOT NULL,
  "housingPercentChange" float8 NOT NULL,
  "discrepancy" float8 NOT NULL
)
;
ALTER TABLE "public"."HOME_VALUES" OWNER TO "postgres";

-- ----------------------------
-- Table structure for RENTAL_VALUES
-- ----------------------------
DROP TABLE IF EXISTS "public"."RENTAL_VALUES";
CREATE TABLE "public"."RENTAL_VALUES" (
  "RegionID" int4 NOT NULL,
  "SizeRank" int4 NOT NULL,
  "RegionName" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "RegionType" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "StateName" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "date_2015_01_31" float8 NOT NULL,
  "date_2015_02_28" float8 NOT NULL,
  "date_2015_03_31" float8 NOT NULL,
  "date_2015_04_30" float8 NOT NULL,
  "date_2015_05_31" float8 NOT NULL,
  "date_2015_06_30" float8 NOT NULL,
  "date_2015_07_31" float8 NOT NULL,
  "date_2015_08_31" float8 NOT NULL,
  "date_2015_09_30" float8 NOT NULL,
  "date_2015_10_31" float8 NOT NULL,
  "date_2015_11_30" float8 NOT NULL,
  "date_2015_12_31" float8 NOT NULL,
  "date_2016_01_31" float8 NOT NULL,
  "date_2016_02_29" float8 NOT NULL,
  "date_2016_03_31" float8 NOT NULL,
  "date_2016_04_30" float8 NOT NULL,
  "date_2016_05_31" float8 NOT NULL,
  "date_2016_06_30" float8 NOT NULL,
  "date_2016_07_31" float8 NOT NULL,
  "date_2016_08_31" float8 NOT NULL,
  "date_2016_09_30" float8 NOT NULL,
  "date_2016_10_31" float8 NOT NULL,
  "date_2016_11_30" float8 NOT NULL,
  "date_2016_12_31" float8 NOT NULL,
  "date_2017_01_31" float8 NOT NULL,
  "date_2017_02_28" float8 NOT NULL,
  "date_2017_03_31" float8 NOT NULL,
  "date_2017_04_30" float8 NOT NULL,
  "date_2017_05_31" float8 NOT NULL,
  "date_2017_06_30" float8 NOT NULL,
  "date_2017_07_31" float8 NOT NULL,
  "date_2017_08_31" float8 NOT NULL,
  "date_2017_09_30" float8 NOT NULL,
  "date_2017_10_31" float8 NOT NULL,
  "date_2017_11_30" float8 NOT NULL,
  "date_2017_12_31" float8 NOT NULL,
  "date_2018_01_31" float8 NOT NULL,
  "date_2018_02_28" float8 NOT NULL,
  "date_2018_03_31" float8 NOT NULL,
  "date_2018_04_30" float8 NOT NULL,
  "date_2018_05_31" float8 NOT NULL,
  "date_2018_06_30" float8 NOT NULL,
  "date_2018_07_31" float8 NOT NULL,
  "date_2018_08_31" float8 NOT NULL,
  "date_2018_09_30" float8 NOT NULL,
  "date_2018_10_31" float8 NOT NULL,
  "date_2018_11_30" float8 NOT NULL,
  "date_2018_12_31" float8 NOT NULL,
  "date_2019_01_31" float8 NOT NULL,
  "date_2019_02_28" float8 NOT NULL,
  "date_2019_03_31" float8 NOT NULL,
  "date_2019_04_30" float8 NOT NULL,
  "date_2019_05_31" float8 NOT NULL,
  "date_2019_06_30" float8 NOT NULL,
  "date_2019_07_31" float8 NOT NULL,
  "date_2019_08_31" float8 NOT NULL,
  "date_2019_09_30" float8 NOT NULL,
  "date_2019_10_31" float8 NOT NULL,
  "date_2019_11_30" float8 NOT NULL,
  "date_2019_12_31" float8 NOT NULL,
  "date_2020_01_31" float8 NOT NULL,
  "date_2020_02_29" float8 NOT NULL,
  "date_2020_03_31" float8 NOT NULL,
  "date_2020_04_30" float8 NOT NULL,
  "date_2020_05_31" float8 NOT NULL,
  "date_2020_06_30" float8 NOT NULL,
  "date_2020_07_31" float8 NOT NULL,
  "date_2020_08_31" float8 NOT NULL,
  "date_2020_09_30" float8 NOT NULL,
  "date_2020_10_31" float8 NOT NULL,
  "date_2020_11_30" float8 NOT NULL,
  "date_2020_12_31" float8 NOT NULL,
  "date_2021_01_31" float8 NOT NULL,
  "date_2021_02_28" float8 NOT NULL,
  "date_2021_03_31" float8 NOT NULL,
  "date_2021_04_30" float8 NOT NULL,
  "date_2021_05_31" float8 NOT NULL,
  "date_2021_06_30" float8 NOT NULL,
  "date_2021_07_31" float8 NOT NULL,
  "date_2021_08_31" float8 NOT NULL,
  "date_2021_09_30" float8 NOT NULL,
  "date_2021_10_31" float8 NOT NULL,
  "date_2021_11_30" float8 NOT NULL,
  "date_2021_12_31" float8 NOT NULL,
  "date_2022_01_31" float8 NOT NULL,
  "date_2022_02_28" float8 NOT NULL,
  "date_2022_03_31" float8 NOT NULL,
  "date_2022_04_30" float8 NOT NULL,
  "date_2022_05_31" float8 NOT NULL,
  "date_2022_06_30" float8 NOT NULL,
  "date_2022_07_31" float8 NOT NULL,
  "date_2022_08_31" float8 NOT NULL,
  "date_2022_09_30" float8 NOT NULL,
  "date_2022_10_31" float8 NOT NULL,
  "date_2022_11_30" float8 NOT NULL,
  "date_2022_12_31" float8 NOT NULL,
  "date_2023_01_31" float8 NOT NULL,
  "date_2023_02_28" float8 NOT NULL,
  "date_2023_03_31" float8 NOT NULL,
  "date_2023_04_30" float8 NOT NULL,
  "date_2023_05_31" float8 NOT NULL,
  "date_2023_06_30" float8 NOT NULL,
  "date_2023_07_31" float8 NOT NULL,
  "date_2023_08_31" float8 NOT NULL,
  "date_2023_09_30" float8 NOT NULL,
  "date_2023_10_31" float8 NOT NULL,
  "date_2023_11_30" float8 NOT NULL,
  "date_2023_12_31" float8 NOT NULL,
  "date_2024_01_31" float8 NOT NULL,
  "date_2024_02_29" float8 NOT NULL,
  "date_2024_03_31" float8 NOT NULL,
  "date_2024_04_30" float8 NOT NULL,
  "date_2024_05_31" float8 NOT NULL,
  "date_2024_06_30" float8 NOT NULL,
  "date_2024_07_31" float8 NOT NULL,
  "rentalPercentChange" float8 NOT NULL
)
;
ALTER TABLE "public"."RENTAL_VALUES" OWNER TO "postgres";

-- ----------------------------
-- Primary Key structure for table CITIES
-- ----------------------------
ALTER TABLE "public"."CITIES" ADD CONSTRAINT "CITIES_pkey" PRIMARY KEY ("city");

-- ----------------------------
-- Primary Key structure for table GDP
-- ----------------------------
ALTER TABLE "public"."GDP" ADD CONSTRAINT "pk_GDP" PRIMARY KEY ("state_name");

-- ----------------------------
-- Primary Key structure for table HOME_VALUES
-- ----------------------------
ALTER TABLE "public"."HOME_VALUES" ADD CONSTRAINT "HOME_VALUES_pkey" PRIMARY KEY ("RegionName");

-- ----------------------------
-- Primary Key structure for table RENTAL_VALUES
-- ----------------------------
ALTER TABLE "public"."RENTAL_VALUES" ADD CONSTRAINT "RENTAL_VALUES_pkey" PRIMARY KEY ("RegionName");

-- ----------------------------
-- Foreign Keys structure for table CITIES
-- ----------------------------
ALTER TABLE "public"."CITIES" ADD CONSTRAINT "fk_CITIES_RegionName" FOREIGN KEY ("RegionName") REFERENCES "public"."HOME_VALUES" ("RegionName") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."CITIES" ADD CONSTRAINT "fk_CITIES_state_name" FOREIGN KEY ("state_name") REFERENCES "public"."GDP" ("state_name") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table HOME_VALUES
-- ----------------------------
ALTER TABLE "public"."HOME_VALUES" ADD CONSTRAINT "fk_HOME_VALUES_RegionName" FOREIGN KEY ("RegionName") REFERENCES "public"."RENTAL_VALUES" ("RegionName") ON DELETE NO ACTION ON UPDATE NO ACTION;


/*
psql -h 127.0.0.1 -U postgres -d RealEstate_DB -c "\COPY \"RENTAL_VALUES\" FROM '/Users/jorgereyes/Downloads/rental_df.csv' DELIMITER ',' CSV HEADER;"
Password for user postgres:
COPY 164

psql -h 127.0.0.1 -U postgres -d RealEstate_DB -c "\COPY \"HOME_VALUES\" FROM '/Users/jorgereyes/Downloads/filtered_home_df.csv' DELIMITER ',' CSV HEADER;"
Password for user postgres:
COPY 164

psql -h 127.0.0.1 -U postgres -d RealEstate_DB -c "\COPY \"GDP\" FROM '/Users/jorgereyes/Downloads/gdp_df.csv' DELIMITER ',' CSV HEADER;"
Password for user postgres:
COPY 60

psql -h 127.0.0.1 -U postgres -d RealEstate_DB -c "\COPY \"CITIES\" FROM '/Users/jorgereyes/Downloads/cities_df_simple.csv' DELIMITER ',' CSV HEADER;"
Password for user postgres:
COPY 161
*/
