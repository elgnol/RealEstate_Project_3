-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "HOME_VALUES" (
    "RegionID" INTEGER   NOT NULL,
    "SizeRank" INTEGER   NOT NULL,
    "RegionName" VARCHAR  PRIMARY KEY NOT NULL,
    "RegionType" VARCHAR   NOT NULL,
    "StateName" VARCHAR   NOT NULL,
    "2015-01-31" FLOAT   NOT NULL,
    "2015-02-28" FLOAT   NOT NULL,
    "2015-03-31" FLOAT   NOT NULL,
    "2015-04-30" FLOAT   NOT NULL,
    "2015-05-31" FLOAT   NOT NULL,
    "2015-06-30" FLOAT   NOT NULL,
    "2015-07-31" FLOAT   NOT NULL,
    "2015-08-31" FLOAT   NOT NULL,
    "2015-09-30" FLOAT   NOT NULL,
    "2015-10-31" FLOAT   NOT NULL,
    "2015-11-30" FLOAT   NOT NULL,
    "2015-12-31" FLOAT   NOT NULL,
    "2016-01-31" FLOAT   NOT NULL,
    "2016-02-29" FLOAT   NOT NULL,
    "2016-03-31" FLOAT   NOT NULL,
    "2016-04-30" FLOAT   NOT NULL,
    "2016-05-31" FLOAT   NOT NULL,
    "2016-06-30" FLOAT   NOT NULL,
    "2016-07-31" FLOAT   NOT NULL,
    "2016-08-31" FLOAT   NOT NULL,
    "2016-09-30" FLOAT   NOT NULL,
    "2016-10-31" FLOAT   NOT NULL,
    "2016-11-30" FLOAT   NOT NULL,
    "2016-12-31" FLOAT   NOT NULL,
    "2017-01-31" FLOAT   NOT NULL,
    "2017-02-28" FLOAT   NOT NULL,
    "2017-03-31" FLOAT   NOT NULL,
    "2017-04-30" FLOAT   NOT NULL,
    "2017-05-31" FLOAT   NOT NULL,
    "2017-06-30" FLOAT   NOT NULL,
    "2017-07-31" FLOAT   NOT NULL,
    "2017-08-31" FLOAT   NOT NULL,
    "2017-09-30" FLOAT   NOT NULL,
    "2017-10-31" FLOAT   NOT NULL,
    "2017-11-30" FLOAT   NOT NULL,
    "2017-12-31" FLOAT   NOT NULL,
    "2018-01-31" FLOAT   NOT NULL,
    "2018-02-28" FLOAT   NOT NULL,
    "2018-03-31" FLOAT   NOT NULL,
    "2018-04-30" FLOAT   NOT NULL,
    "2018-05-31" FLOAT   NOT NULL,
    "2018-06-30" FLOAT   NOT NULL,
    "2018-07-31" FLOAT   NOT NULL,
    "2018-08-31" FLOAT   NOT NULL,
    "2018-09-30" FLOAT   NOT NULL,
    "2018-10-31" FLOAT   NOT NULL,
    "2018-11-30" FLOAT   NOT NULL,
    "2018-12-31" FLOAT   NOT NULL,
    "2019-01-31" FLOAT   NOT NULL,
    "2019-02-28" FLOAT   NOT NULL,
    "2019-03-31" FLOAT   NOT NULL,
    "2019-04-30" FLOAT   NOT NULL,
    "2019-05-31" FLOAT   NOT NULL,
    "2019-06-30" FLOAT   NOT NULL,
    "2019-07-31" FLOAT   NOT NULL,
    "2019-08-31" FLOAT   NOT NULL,
    "2019-09-30" FLOAT   NOT NULL,
    "2019-10-31" FLOAT   NOT NULL,
    "2019-11-30" FLOAT   NOT NULL,
    "2019-12-31" FLOAT   NOT NULL,
    "2020-01-31" FLOAT   NOT NULL,
    "2020-02-29" FLOAT   NOT NULL,
    "2020-03-31" FLOAT   NOT NULL,
    "2020-04-30" FLOAT   NOT NULL,
    "2020-05-31" FLOAT   NOT NULL,
    "2020-06-30" FLOAT   NOT NULL,
    "2020-07-31" FLOAT   NOT NULL,
    "2020-08-31" FLOAT   NOT NULL,
    "2020-09-30" FLOAT   NOT NULL,
    "2020-10-31" FLOAT   NOT NULL,
    "2020-11-30" FLOAT   NOT NULL,
    "2020-12-31" FLOAT   NOT NULL,
    "2021-01-31" FLOAT   NOT NULL,
    "2021-02-28" FLOAT   NOT NULL,
    "2021-03-31" FLOAT   NOT NULL,
    "2021-04-30" FLOAT   NOT NULL,
    "2021-05-31" FLOAT   NOT NULL,
    "2021-06-30" FLOAT   NOT NULL,
    "2021-07-31" FLOAT   NOT NULL,
    "2021-08-31" FLOAT   NOT NULL,
    "2021-09-30" FLOAT   NOT NULL,
    "2021-10-31" FLOAT   NOT NULL,
    "2021-11-30" FLOAT   NOT NULL,
    "2021-12-31" FLOAT   NOT NULL,
    "2022-01-31" FLOAT   NOT NULL,
    "2022-02-28" FLOAT   NOT NULL,
    "2022-03-31" FLOAT   NOT NULL,
    "2022-04-30" FLOAT   NOT NULL,
    "2022-05-31" FLOAT   NOT NULL,
    "2022-06-30" FLOAT   NOT NULL,
    "2022-07-31" FLOAT   NOT NULL,
    "2022-08-31" FLOAT   NOT NULL,
    "2022-09-30" FLOAT   NOT NULL,
    "2022-10-31" FLOAT   NOT NULL,
    "2022-11-30" FLOAT   NOT NULL,
    "2022-12-31" FLOAT   NOT NULL,
    "2023-01-31" FLOAT   NOT NULL,
    "2023-02-28" FLOAT   NOT NULL,
    "2023-03-31" FLOAT   NOT NULL,
    "2023-04-30" FLOAT   NOT NULL,
    "2023-05-31" FLOAT   NOT NULL,
    "2023-06-30" FLOAT   NOT NULL,
    "2023-07-31" FLOAT   NOT NULL,
    "2023-08-31" FLOAT   NOT NULL,
    "2023-09-30" FLOAT   NOT NULL,
    "2023-10-31" FLOAT   NOT NULL,
    "2023-11-30" FLOAT   NOT NULL,
    "2023-12-31" FLOAT   NOT NULL,
    "2024-01-31" FLOAT   NOT NULL,
    "2024-02-29" FLOAT   NOT NULL,
    "2024-03-31" FLOAT   NOT NULL,
    "2024-04-30" FLOAT   NOT NULL,
    "2024-05-31" FLOAT   NOT NULL,
    "2024-06-30" FLOAT   NOT NULL,
    "2024-07-31" FLOAT   NOT NULL,
    "housingPercentChange" FLOAT   NOT NULL,
    "discrepancy" FLOAT   NOT NULL

);

CREATE TABLE "GDP" (
    "state_name" VARCHAR   NOT NULL,
    "2023_GDP" FLOAT   NOT NULL,
    CONSTRAINT "pk_GDP" PRIMARY KEY (
        "state_name"
     )
);

CREATE TABLE "RENTAL_VALUES" (
    "RegionID" INTEGER   NOT NULL,
    "SizeRank" INTEGER   NOT NULL,
    "RegionName" VARCHAR  PRIMARY KEY NOT NULL,
    "RegionType" VARCHAR   NOT NULL,
    "StateName" VARCHAR   NOT NULL,
    "2015-01-31" FLOAT   NOT NULL,
    "2015-02-28" FLOAT   NOT NULL,
    "2015-03-31" FLOAT   NOT NULL,
    "2015-04-30" FLOAT   NOT NULL,
    "2015-05-31" FLOAT   NOT NULL,
    "2015-06-30" FLOAT   NOT NULL,
    "2015-07-31" FLOAT   NOT NULL,
    "2015-08-31" FLOAT   NOT NULL,
    "2015-09-30" FLOAT   NOT NULL,
    "2015-10-31" FLOAT   NOT NULL,
    "2015-11-30" FLOAT   NOT NULL,
    "2015-12-31" FLOAT   NOT NULL,
    "2016-01-31" FLOAT   NOT NULL,
    "2016-02-29" FLOAT   NOT NULL,
    "2016-03-31" FLOAT   NOT NULL,
    "2016-04-30" FLOAT   NOT NULL,
    "2016-05-31" FLOAT   NOT NULL,
    "2016-06-30" FLOAT   NOT NULL,
    "2016-07-31" FLOAT   NOT NULL,
    "2016-08-31" FLOAT   NOT NULL,
    "2016-09-30" FLOAT   NOT NULL,
    "2016-10-31" FLOAT   NOT NULL,
    "2016-11-30" FLOAT   NOT NULL,
    "2016-12-31" FLOAT   NOT NULL,
    "2017-01-31" FLOAT   NOT NULL,
    "2017-02-28" FLOAT   NOT NULL,
    "2017-03-31" FLOAT   NOT NULL,
    "2017-04-30" FLOAT   NOT NULL,
    "2017-05-31" FLOAT   NOT NULL,
    "2017-06-30" FLOAT   NOT NULL,
    "2017-07-31" FLOAT   NOT NULL,
    "2017-08-31" FLOAT   NOT NULL,
    "2017-09-30" FLOAT   NOT NULL,
    "2017-10-31" FLOAT   NOT NULL,
    "2017-11-30" FLOAT   NOT NULL,
    "2017-12-31" FLOAT   NOT NULL,
    "2018-01-31" FLOAT   NOT NULL,
    "2018-02-28" FLOAT   NOT NULL,
    "2018-03-31" FLOAT   NOT NULL,
    "2018-04-30" FLOAT   NOT NULL,
    "2018-05-31" FLOAT   NOT NULL,
    "2018-06-30" FLOAT   NOT NULL,
    "2018-07-31" FLOAT   NOT NULL,
    "2018-08-31" FLOAT   NOT NULL,
    "2018-09-30" FLOAT   NOT NULL,
    "2018-10-31" FLOAT   NOT NULL,
    "2018-11-30" FLOAT   NOT NULL,
    "2018-12-31" FLOAT   NOT NULL,
    "2019-01-31" FLOAT   NOT NULL,
    "2019-02-28" FLOAT   NOT NULL,
    "2019-03-31" FLOAT   NOT NULL,
    "2019-04-30" FLOAT   NOT NULL,
    "2019-05-31" FLOAT   NOT NULL,
    "2019-06-30" FLOAT   NOT NULL,
    "2019-07-31" FLOAT   NOT NULL,
    "2019-08-31" FLOAT   NOT NULL,
    "2019-09-30" FLOAT   NOT NULL,
    "2019-10-31" FLOAT   NOT NULL,
    "2019-11-30" FLOAT   NOT NULL,
    "2019-12-31" FLOAT   NOT NULL,
    "2020-01-31" FLOAT   NOT NULL,
    "2020-02-29" FLOAT   NOT NULL,
    "2020-03-31" FLOAT   NOT NULL,
    "2020-04-30" FLOAT   NOT NULL,
    "2020-05-31" FLOAT   NOT NULL,
    "2020-06-30" FLOAT   NOT NULL,
    "2020-07-31" FLOAT   NOT NULL,
    "2020-08-31" FLOAT   NOT NULL,
    "2020-09-30" FLOAT   NOT NULL,
    "2020-10-31" FLOAT   NOT NULL,
    "2020-11-30" FLOAT   NOT NULL,
    "2020-12-31" FLOAT   NOT NULL,
    "2021-01-31" FLOAT   NOT NULL,
    "2021-02-28" FLOAT   NOT NULL,
    "2021-03-31" FLOAT   NOT NULL,
    "2021-04-30" FLOAT   NOT NULL,
    "2021-05-31" FLOAT   NOT NULL,
    "2021-06-30" FLOAT   NOT NULL,
    "2021-07-31" FLOAT   NOT NULL,
    "2021-08-31" FLOAT   NOT NULL,
    "2021-09-30" FLOAT   NOT NULL,
    "2021-10-31" FLOAT   NOT NULL,
    "2021-11-30" FLOAT   NOT NULL,
    "2021-12-31" FLOAT   NOT NULL,
    "2022-01-31" FLOAT   NOT NULL,
    "2022-02-28" FLOAT   NOT NULL,
    "2022-03-31" FLOAT   NOT NULL,
    "2022-04-30" FLOAT   NOT NULL,
    "2022-05-31" FLOAT   NOT NULL,
    "2022-06-30" FLOAT   NOT NULL,
    "2022-07-31" FLOAT   NOT NULL,
    "2022-08-31" FLOAT   NOT NULL,
    "2022-09-30" FLOAT   NOT NULL,
    "2022-10-31" FLOAT   NOT NULL,
    "2022-11-30" FLOAT   NOT NULL,
    "2022-12-31" FLOAT   NOT NULL,
    "2023-01-31" FLOAT   NOT NULL,
    "2023-02-28" FLOAT   NOT NULL,
    "2023-03-31" FLOAT   NOT NULL,
    "2023-04-30" FLOAT   NOT NULL,
    "2023-05-31" FLOAT   NOT NULL,
    "2023-06-30" FLOAT   NOT NULL,
    "2023-07-31" FLOAT   NOT NULL,
    "2023-08-31" FLOAT   NOT NULL,
    "2023-09-30" FLOAT   NOT NULL,
    "2023-10-31" FLOAT   NOT NULL,
    "2023-11-30" FLOAT   NOT NULL,
    "2023-12-31" FLOAT   NOT NULL,
    "2024-01-31" FLOAT   NOT NULL,
    "2024-02-29" FLOAT   NOT NULL,
    "2024-03-31" FLOAT   NOT NULL,
    "2024-04-30" FLOAT   NOT NULL,
    "2024-05-31" FLOAT   NOT NULL,
    "2024-06-30" FLOAT   NOT NULL,
    "2024-07-31" FLOAT   NOT NULL,
    "rentalPercentChange" FLOAT   NOT NULL,

);

CREATE TABLE "CITIES" (
    "city" VARCHAR PRIMARY KEY NOT NULL,
    "state_id" VARCHAR   NOT NULL,
    "lat" FLOAT   NOT NULL,
    "lng" FLOAT   NOT NULL,
    "RegionName" VARCHAR   NOT NULL,
    "population" INTEGER   NOT NULL,
    "state_name" VARCHAR   NOT NULL

);

'drop table CITIES;
drop table HOME_VALUES;
drop table RENTAL_VALUES;


'ALTER TABLE "HOME_VALUES" ADD CONSTRAINT "fk_HOME_VALUES_RegionName" FOREIGN KEY("RegionName")
REFERENCES "RENTAL_VALUES" ("RegionName");

ALTER TABLE "CITIES" ADD CONSTRAINT "fk_CITIES_RegionName" FOREIGN KEY("RegionName")
REFERENCES "HOME_VALUES" ("RegionName");

ALTER TABLE "CITIES" ADD CONSTRAINT "fk_CITIES_state_name" FOREIGN KEY("state_name")
REFERENCES "GDP" ("state_name");