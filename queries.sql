-- 11. Räkna antal böcker per kategori

SELECT category, COUNT(*) 
FROM books 
GROUP BY category;

-- 12. Hitta de 5 mest populära böckerna (mest lånade)

SELECT b.title, COUNT(*) AS loan_count
FROM loans l
JOIN books b ON b.id = l.book_id
GROUP BY b.id
ORDER BY loan_count DESC
LIMIT 5;

-- 13. Visa medlemmar med flest antal lån

SELECT
  m.id,
  m.first_name,
  m.last_name,
  m.email,
  COUNT(l.id) AS total_loans,
  COUNT(l.id) FILTER (WHERE l.return_date IS NULL) AS active_loans,
  COUNT(l.id) FILTER (WHERE l.return_date IS NOT NULL) AS returned_loans
FROM members m
LEFT JOIN loans l ON l.member_id = m.id
GROUP BY m.id
ORDER BY total_loans DESC, m.last_name, m.first_name; --Fråga ashur om vad han har för tips.

-- 14. Beräkna genomsnittligt antal dagar mellan lånedatum och återlämning

SELECT AVG(return_date - loan_date) AS avg_lending_interval
FROM loans
WHERE return_date IS NOT NULL;

-- 15. Visa hur många böcker som är försenade (due_date passerat men inte återlämnade)

SELECT * from loans where return_date > due_date;