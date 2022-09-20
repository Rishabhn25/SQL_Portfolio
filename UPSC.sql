USE upsc;
DESC service;
SELECT * FROM SERVICES ;

 -- Distinct Services
 SELECT ROW_NUMBER() OVER(ORDER BY SERVICE) as 
	S_No,	
	SERVICE,
    COUNT(SERVICE) as No_of_Candidates FROM
    Services GROUP BY SERVICE;
 
 --  CATEGORY WISE SERVICE ANALYSYS
 --	 No Disability CATEGORY
SELECT * FROM SERVICES where disability='no';
 
SELECT ROW_NUMBER() OVER(ORDER BY SERVICE) as 
	S_No,
    count(roll_number) as No_of_Candidates,
	min(ranks) as Minimum_Rank,
    max(ranks) as Maximum_Rank , 
    service, 
    category 
    FROM SERVICES 
    WHERE Disability = 'No' 
    GROUP BY service, category
    ORDER BY service;
 
 --	 With Disability 
 SELECT * FROM SERVICES where disability='yes' ORDER BY SERVICE;
 
SELECT ROW_NUMBER() OVER(ORDER BY SERVICE) as 
	S_No,
    count(roll_number),
    min(ranks) as Minimum_Rank, 
    max(ranks) as Maximum_Rank, 
    service, 
    category 
    FROM SERVICES
    WHERE Disability = 'Yes' 
    GROUP BY service, category
    ORDER BY service;
 
