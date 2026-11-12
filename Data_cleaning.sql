-- Data cleaning
select * from layoffs;
-- steps involved in cleaning the data 
-- 1. Remove duplicates 
-- 2. Standardise the data
-- 3. Null values or blank values
-- 4 . Remove any columns 

create table layoffs_staging
like layoffs;

select * from layoffs_staging;

