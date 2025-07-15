-- 5. Develop queries to retrieve event information, generate attendee lists, and calculate event attendance statistics.
-- a) Retrieve all events with their details.
SELECT 
    e.event_name, 
    e.event_date, 
    e.event_location, 
    e.event_description
FROM
    events e
WHERE e.event_name = 'SQL for Beginners Workshop'; -- change event name when needed;

-- b) Retrieve all attendees with their contact information.
SELECT 
    a.attendee_name, 
    a.attendee_phone, 
    a.attendee_email,
    e.event_name
FROM
    attendees a
JOIN registrations r 
	ON r.attendee_id = a.attendee_id
JOIN events e
	ON e.event_id = r.event_id
WHERE e.event_name = 'SQL for Beginners Workshop'; -- change event name when needed

-- c) Calculating event attendance statistics
SELECT
    e.event_name,
    e.event_date,
    COUNT(r.attendee_id) AS number_of_attendees,
    SUM(r.registration_amount) AS total_revenue,
    DENSE_RANK() OVER (ORDER BY COUNT(r.attendee_id) DESC) AS course_popularity_rank
FROM
    events e
JOIN
    registrations r ON e.event_id = r.event_id
GROUP BY
    e.event_name, e.event_date
ORDER BY
    number_of_attendees DESC;
