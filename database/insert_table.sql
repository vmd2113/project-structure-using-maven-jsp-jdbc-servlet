USE englishnews

insert into role(role_code,role_name) values('ADMIN','Quản trị');
insert into role(role_code,role_name) values('USER','Người dùng');

insert into user(user_name,user_password,user_fullname,user_status, roleid) values('admin','123456','admin',1,1);
insert into user(user_name,user_password,user_fullname,user_status, roleid) values('nguyenvana','123456','Nguyễn Văn A',1,2);
insert into user(user_name,user_password,user_fullname,user_status, roleid) values('nguyenvanb','123456','Nguyễn Văn B',1,2);
insert into user(user_name,user_password,user_fullname,user_status, roleid) values('vmdx7','123456','Văn Minh Dương',1,2);
insert into user(user_name,user_password,user_fullname,user_status, roleid) values('vmd2113','123456','Văn Minh Dương',1,1);
