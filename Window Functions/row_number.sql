select row_number() OVER (partition by name ORDER BYname) as Id, Name
FROM tblEmployees