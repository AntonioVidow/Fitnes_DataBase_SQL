set @location_id = 1;
set @picture_id = 1;

select COUNT(*) into @location_exists from locations where id = @location_id;

select COUNT(*) into @picture_exists from pictures where id = @picture_id;

select @location_exists as location_exists, @picture_exists as picture_exists;

start transaction;

insert into subscriptions (`type`, start_date, due_date) values ('Monthly', '2024-06-01', '2024-06-30');

set @subscription_id = LAST_INSERT_ID();

insert into customers (first_name, last_name, subscriptions_id, locations_id, pictures_id) values('Ivan', 'Ivanov', @subscription_id, @location_id, @picture_id);

update equipment set amount = amount - 1
where id = 1 and locations_id = @location_id;  

commit;