USE musica;

# Inserindo registros
INSERT INTO faixas (titulo, album, duracao_seg)
VALUES 
	('Primeira Luz', 'Amanhecer', 200), 
	('Vento do Leste', 'Amanhecer', 184),
	('City Drive', 'Neon Nights', 198);

# Corrigir a duração da faixa Primeira Luz para 210 segundos.
USE musica;
UPDATE faixas SET duracao_seg = 210
	WHERE faixas.titulo = 'Primeira Luz'
	
# Alterar o álbum da faixa City Drive para City Vibes.
UPDATE faixas SET album = 'City Vibes' WHERE titulo = 'City Drive';
