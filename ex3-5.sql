SELECT 
sender_id,
count(message_id) AS message_count



FROM messages

WHERE EXTRACT(month from sent_date) = 8
and EXTRACT(year from sent_date) = 2022
GROUP BY sender_id 
ORDER BY message_count DESC
limit 2
;
