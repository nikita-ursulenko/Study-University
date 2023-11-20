
--хкакаято
select * 
    from studenti S, note N
    where s.nr_matricol = n.nr_matricol and valoare >= 8

-- еще одна

SELECT COUNT(*), AN
    FROM studenti
    GROUP BY an
    HAVING count(*)=(select MAX(count(*)) FROM STUDENTI GROUP BY AN)

-- КАКАЯ ОЦЕНКА >
select * 
    from note N, studenti S
    where n.NR_MATRICOL = s.NR_MATRICOL and valoare = 10;


--
SELECT COUNT(*), EXPERIENCE
    FROM profesori
    GROUP BY EXPERIENCE
    HAVING count(*)= (select MAX(count(*)) FROM profesori GROUP BY EXPERIENCE)

--
