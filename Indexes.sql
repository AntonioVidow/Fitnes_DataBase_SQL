create index idx_salary on employees(salary);
create index `idx_name_c` on customers(first_name, last_name);
create index `idx_name_e` on employees(first_name, last_name);
create index idx_position on employees(`position`(3));
create index idx_type on subscriptions(`type`(4));