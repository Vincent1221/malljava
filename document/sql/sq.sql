Create Procedure MyProcedure AS Begin
Set
    NOCOUNT ON;

Set
    XACT_ABORT on;

--这句话非常重要
Begin Tran --开始事务
insert into
    userinfo(username, userpwd, RegisterTime)
values
('admin', 'admin', getdate())
insert into
    userinfo(username, userpwd, RegisterTime)
values
('jack', 'jack', getdate()) Commit Tran --提交事务
End