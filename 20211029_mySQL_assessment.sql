-- 2. First, use SELECT * from both tables and use your knowledge of queries and 
-- aggregate functions to get to know the data:

-- What are the Top 25 schools (.edu domains)?
select email_domain, count(*) as 'top 25 school' from users 
group by email_domain order by count(*) desc limit 25;

-- How many .edu learners are located in New York?
select city, count(*) as 'total number' from users where city = 'New York';

-- The mobile_app column contains either mobile-user or NULL. 
-- How many of these Codecademy learners are using the mobile app?
select mobile_app, count(*) as 'total number' from users where mobile_app is not ''; -- codecademy don't take null






-- 3. Now, using (sqlite) function strftime(format, column), query for the sign up counts for each hour.
select strftime('%H', sign_up_at) as 'Sign-up (Hour)', count(*) from users 
group by strftime('%H', sign_up_at) order by strftime('%H', sign_up_at);






-- 4. Join the two tables using JOIN and then see what you can dig out of the data!

-- Do different schools (.edu domains) prefer different courses?
-- ANSWER: learn_cpp is prefer by ucsd.edu
select email_domain, count(*) as 'Top 3 school completed or started (learn_cpp)' from progress join users 
on progress.user_id = users.user_id where learn_cpp is not '' group by email_domain order by count(*) desc limit 3;

-- ANSWER: learn_sql is prefer by ucsd.edu
select email_domain, count(*) as 'Top 3 school completed or started (learn_sql)' from progress join users 
on progress.user_id = users.user_id where learn_sql is not '' group by email_domain order by count(*) desc limit 3;

-- ANSWER: learn_html is prefer by ucsd.edu
select email_domain, count(*) as 'Top 3 school completed or started (learn_html)' from progress join users 
on progress.user_id = users.user_id where learn_html is not '' group by email_domain order by count(*) desc limit 3;

-- ANSWER: learn_javascript is prefer by ucsd.edu
select email_domain, count(*) as 'Top 3 school completed or started (learn_javascript)' from progress join users 
on progress.user_id = users.user_id where learn_javascript is not '' group by email_domain order by count(*) desc limit 3;

-- ANSWER: learn_java is prefer by ucsd.edu
select email_domain, count(*) as 'Top 3 school completed or started (learn_java)' from progress join users 
on progress.user_id = users.user_id where learn_java is not '' group by email_domain order by count(*) desc limit 3;







-- What courses are the New Yorkers students taking?
select count(*) as 'New York students started or completed learn_cpp' from users join progress 
on progress.user_id = users.user_id where learn_cpp is not '' and city = "New York";

select count(*) as 'New York students started or completed learn_sql' from users join progress 
on progress.user_id = users.user_id where learn_sql is not '' and city = "New York";

select count(*) as 'New York students started or completed learn_html' from users join progress 
on progress.user_id = users.user_id where learn_html is not '' and city = "New York";

select count(*) as 'New York students started or completed learn_javascript' from users join progress 
on progress.user_id = users.user_id where learn_javascript is not '' and city = "New York";

select count(*) as 'New York students started or completed learn_java' from users join progress 
on progress.user_id = users.user_id where learn_java is not '' and city = "New York";







-- What courses are the Chicago students taking?
select count(*) as 'Chicago students started or completed learn_cpp' from users join progress 
on progress.user_id = users.user_id where learn_cpp is not '' and city = "Chicago";

select count(*) as 'Chicago students started or completed learn_sql' from users join progress 
on progress.user_id = users.user_id where learn_sql is not '' and city = "Chicago";

select count(*) as 'Chicago students started or completed learn_html' from users join progress 
on progress.user_id = users.user_id where learn_html is not '' and city = "Chicago";

select count(*) as 'Chicago students started or completed learn_javascript' from users join progress 
on progress.user_id = users.user_id where learn_javascript is not '' and city = "Chicago";

select count(*) as 'Chicago students started or completed learn_java' from users join progress 
on progress.user_id = users.user_id where learn_java is not '' and city = "Chicago";
