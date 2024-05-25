create role `admin_r`, delivery_r, cashier_r;

grant all on fitness.* to `admin_r`;
grant insert, update, select on products to delivery_r;
grant update, select (amount) on products to cashier_r;

create user Antonio_admin identified by '1234';
grant admin_r to Antonio_admin;

create user Deivid_del identified by '1234';
grant delivery_r to Deivid_del;

create user Lili_cash identified by '1234';
grant cashier_r to Lili_cash;