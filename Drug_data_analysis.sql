select * from data


--Q1 :- select total number of uniuqe drugs

select count(distinct drug_name) as unique_drugs
from data


--Q2 :- select total number of uniuqe medical condition

select count(distinct medical_condition) as unique_medical_condition
from data

--Q3 :- select total number of uniuqe drug classes


select count(distinct drug_classes) as unique_drug_classes
from data


--Q4 :- select total number of uniuqe brand name


select count(distinct brand_names) as unique_brand_names
from data


--Q6 :- select the number of drugs effected by alcohol or not


SELECT
  COUNT(*) FILTER (WHERE alcohol = 'X') AS alcohol_yes,
  COUNT(*) FILTER (WHERE alcohol = 'No Interaction') AS alcohol_no
FROM data;


--Q7 :- select the number of drugs are OTC and Rx or both


SELECT
  COUNT(*) FILTER (WHERE rx_otc = 'OTC') AS number_of_otc,
  COUNT(*) FILTER (WHERE rx_otc = 'Rx') AS number_of_rx,
   COUNT(*) FILTER (WHERE rx_otc = 'Rx/OTC') AS number_of_both
FROM data;



--Q8 :- number of drug have a same drug_classis

select count(drug_name) as total,
drug_classes 
from data
group by drug_classes
order by total desc


--Q9 :- most reviews drug

select drug_name ,
	medical_condition,
	drug_classes,
	rx_otc,csa,
	no_of_reviews
from data
order by no_of_reviews  desc



--Q10 :-  most rated drug


select drug_name ,
	medical_condition,
	drug_classes,
	rx_otc,csa,
	rating
from data
order by rating  desc



--Q11 :-  number of drugd by csa

select csa, COUNT(*) AS total_drugs
from data
group by csa
order by total_drugs desc;

--Q12 :- top 10 medical conditions with the highest number of drugs.
select count(drug_name) as total,
medical_condition
from data
group by medical_condition
order by total desc
limit 10

--Q13 which drug have lowest rating


select drug_name, rating
from data
order by rating ASC

--Q13 Pregnancy Risk Category Analysis

select pregnancy_category, count(drug_name) as number_of_drugs
from data
group by pregnancy_category
order by pregnancy_category;


