SELECT J.ID, J.Created, CAST(JP.Payload AS VARCHAR(MAX)) AS Payload
FROM Jobs.JobPayload JP
JOIN Job J ON J.ID = JP.JobID
WHERE CAST(Payload AS VARCHAR(MAX)) LIKE '%reject%'
AND J.Created > '2023-03-02 00:00:00'
AND J.Created < '2023-03-02 23:59:59'