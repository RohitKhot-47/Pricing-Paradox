select*
from pricing_paradox;

select distinct brand
from pricing_paradox
where tier = '3';

select count(*)
from pricing_paradox
where tier = '3';

select  tier, avg( annual_revenue_usd ) as avg_revenue_per_tier
from pricing_paradox
group by  tier;

select  tier, avg( price_usd ) as avg_price_per_tier, avg(global_store_count), avg(annual_revenue_usd)
from pricing_paradox
group by  tier;

--- EXCLUSIVITY 

select tier, count(is_limited_edition)
from pricing_paradox
where is_limited_edition = 'Yes'
group by tier;

select tier, count(waitlist_required)
from pricing_paradox
where waitlist_required = 'Yes'
group by tier;

select tier, count(sold_in_outlet)
from pricing_paradox
where sold_in_outlet = 'Yes'
group by tier;

select tier, distribution_channel
from pricing_paradox;

select brand, tier, distribution_channel
from pricing_paradox
where tier = '1';

select distribution_channel, count(brand) as brand_count
from pricing_paradox
where tier = '2'
group by distribution_channel
order by brand_count desc;

select distribution_channel, count(brand) brand_count
from pricing_paradox
where tier = '3'
group by distribution_channel
order by brand_count desc;

select tier, avg(global_store_count)
from pricing_paradox
group by tier;

--- Desirablity ---

select distinct brand, celebrity_endorsed, tier
from pricing_paradox;

select tier, count(celebrity_endorsed)
from pricing_paradox
where celebrity_endorsed = 'Yes'
group by tier;

select distinct brand, celebrity_endorsed, tier
from pricing_paradox
where celebrity_endorsed = 'yes';

select tier, count(distinct brand)
from pricing_paradox
where celebrity_endorsed = 'yes'
group by tier;
select distinct marketing_strategy, brand, tier
from pricing_paradox;

--- Legacy ---

select distinct brand, tier, brand_founded_year
from pricing_paradox;

select distinct brand, tier, brand_founded_year
from pricing_paradox
where brand_founded_year <'1925' ;

select distinct brand, tier, brand_founded_year,
case 
	when brand_founded_year > '1975' then 'Upcoming >50 yrs'
    when brand_founded_year between '1925' and '1975' then 'true heritage 50+ yrs'
    when brand_founded_year < '1925' then 'Legacy 100+ yrs'
end as heritage
from pricing_paradox;

alter table pricing_paradox
add column heritage text;

update pricing_paradox
set heritage = 
case 
	when brand_founded_year > '1975' then 'Upcoming >50 yrs'
    when brand_founded_year between '1925' and '1975' then 'true heritage 50+ yrs'
    when brand_founded_year < '1925' then 'Legacy 100+ yrs'
end;

select distinct brand, tier, brand_founded_year, heritage
from pricing_paradox;

select distinct brand, tier, brand_founded_year, heritage
from pricing_paradox
where heritage like '%>50%';

select heritage, avg(price_usd)
from pricing_paradox
group by heritage;

--- craftsmanship ---

select*
from pricing_paradox;

select distinct primary_material, tier
from pricing_paradox;

--- 

select distinct distribution_channel, tier
from pricing_paradox;

select distribution_channel, avg(price_usd)
from pricing_paradox
group by distribution_channel;

