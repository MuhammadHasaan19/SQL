USE bankSchema; 

   desc customer;
    desc bank;
    desc branch;
    desc employee;
    desc loanaccounts;
    desc savingaccounts;
    desc transaction;
    
    # Task 1
    # Write a query to display the name and transaction id of
    # the employees whose transaction amount was greater than 100000 
 select e.name,t.id 
    from   employee  as e
    join transaction as t
    on  e.eid = t.eid
    where transaction_amount > 100000 ;
    
    # Task 2
    # Write a query to display all the customer names with their saving accounts number
    # having balance more than 10000 and less than 50000.
    
    select c.name,s.Account_number
    from   customer  as c
    join   savingaccounts as s
    on     c.customer_id=s.customer_id
    where s.current_balance > 10000 and  s.current_balance < 50000;
    
 #  Task 3:
 #  Write a query to display all the saving account number with their owner’s name.
  select e.name,s.Account_number
    from   employee  as e
    join savingaccounts  as s
    on  e.branch_id = s.branch_id;
  
   #  Task 4:
   # Write a query to display the transaction details and customer name 
   # whose transaction are greater than 1500000 in their saving account.
    select c.name,t.transactionDetails ,s.Account_number
    from   savingaccounts as s
    join  customer  as c
    on   s.customer_id=c.customer_id 
	join   transaction as t
    on    s.Account_number= t.savingAccount_number
    where transaction > 1500000;
    
   #  Task 5: Display the name of the employees whose bank name start with ‘M’. 
   select e.name
    from   employee  as e
    join branch  as br
    on  e.branch_id= br.branch_id
    join bank  as b
    on  br.bank_id= br.bank_id
    where b.bank_name like  'M%';
    