SELECT assignments.id, assignments.day, assignments.chapter, assignments.name, count(assistance_requests.*) as total_requests
FROM assignments 
LEFT JOIN assistance_requests on assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;