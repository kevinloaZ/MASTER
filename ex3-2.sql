select 
user_id,
UPPER (left(name , 1)) || lower(right(name ,length(name)-1 )) as name,
substring(name from 2 )
from users
order by user_id
