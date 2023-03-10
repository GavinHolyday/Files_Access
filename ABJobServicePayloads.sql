SELECT J.ID, J.Created, CAST(JP.Payload AS VARCHAR(MAX)) AS Payload
FROM dbo.JobPayload JP
JOIN dbo.Job J ON J.ID = JP.JobID
WHERE J.Created BETWEEN '2023-03-02 00:00:00' AND '2023-03-02 23:59:59'
