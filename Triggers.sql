delimiter $$
create trigger fitness.after_customer_insert after insert on customers for each row
begin
  insert into customer_log (customer_id, `action`, new_first_name, new_last_name) values(new.id, 'Customer Added', NEW.first_name, NEW.last_name);
end $$

delimiter ;


delimiter $$

create trigger fitness.after_customer_update after update on customers for each row
begin
  if old.first_name != new.first_name or old.last_name != new.last_name then
    insert into customer_log (customer_id, `action`, old_first_name, new_first_name, old_last_name, new_last_name) 
    values (old.id, 'UPDATE', old.first_name, new.first_name, old.last_name, new.last_name);
  end if;
end$$

delimiter ;
