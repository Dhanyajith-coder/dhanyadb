-- Data cleaning
select * from layoffs;
-- steps involved in cleaning the data 
-- 1. Remove duplicates 
-- 2. Standardise the data
-- 3. Null values or blank values
-- 4 . Remove any columns

 
-- create a staging.
create table layoffs_staging
like layoffs;

select * from layoffs_staging;


-- copy the values form original table to staged tabel
insert layoffs_staging
select * from layoffs;

select * from layoffs_staging;

select count(*) from layoffs_staging;
select count(*) from layoffs;

select company,location, industry,total_laid_off, percentage_laid_off, date,stage,country, funds_raised_millions,count(*) 
from layoffs_staging
group by company,location, industry,total_laid_off, percentage_laid_off, date,stage,country, funds_raised_millions
having count(*) >1;

select * from layoffs_staging 
where company = 'Yahoo';

