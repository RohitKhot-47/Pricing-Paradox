select *
from amazon_products;

alter table amazon_products
drop collected_at;

create table working_dataset
like amazon_products;

insert working_dataset
select*
from amazon_products;

select*
from working_dataset;
