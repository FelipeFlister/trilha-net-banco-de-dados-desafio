-- Desafio 1
-- SELECT Nome, Ano FROM Filmes
-- Desafio 2
-- SELECT Nome, Ano, Duracao FROM Filmes
-- ORDER BY Ano
-- Desafio 3
-- SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'
-- Desafio 4
-- SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997
-- Desafio 5
-- SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000
-- Desafio 6
-- SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150
-- ORDER BY Duracao
-- Desafio 7
-- SELECT Ano, COUNT(*) QuantidadeFilmes, SUM(Duracao) DuracaoTotal FROM Filmes
-- GROUP BY Ano
-- ORDER BY DuracaoTotal DESC;
-- Desafio 8
-- SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'
-- Desafio 9 
-- SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F'
-- ORDER BY PrimeiroNome
-- Desafio 10 
-- SELECT 
--   Filmes.Nome AS NomeDoFilme,
--   Generos.Genero AS Genero
-- FROM
--	 Filmes
-- INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
-- INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;
-- Desafio 11 
-- SELECT 
--   Filmes.Nome AS NomeDoFilme,
--   Generos.Genero AS Genero
-- FROM
--	 Filmes
-- INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
-- INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
-- WHERE Genero = 'Mistério'
-- Desafio 12 
SELECT 
    Filmes.Nome AS NomeDoFilme,
    Atores.PrimeiroNome PrimeiroNomeDoAtor,
    Atores.UltimoNome UltimoNomeDoAtor,
    ElencoFilme.Papel PapelDoAtor
FROM
	Filmes
INNER JOIN Atores ON Filmes.Id = Atores.Id
INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.IdAtor
