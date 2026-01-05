CREATE DATABASE tutorial;
USE tutorial;

CREATE TABLE utilisateur (
    id_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE categorie (
    id_categorie INT AUTO_INCREMENT PRIMARY KEY,
    nom_categorie VARCHAR(100) NOT NULL
);

CREATE TABLE article (
    id_article INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(150) NOT NULL,
    contenu TEXT NOT NULL,
    date_publication DATE,
    id_utilisateur INT NOT NULL,
    id_categorie INT NOT NULL,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur),
    FOREIGN KEY (id_categorie) REFERENCES categorie(id_categorie)
);

INSERT INTO utilisateur (nom, email) VALUES
('Ayoub', 'ayoub@gmail.com'),
('Sara', 'sara@gmail.com');

INSERT INTO categorie (nom_categorie) VALUES
('Informatique'),
('Web'),
('Sécurité');

INSERT INTO article (titre, contenu, date_publication, id_utilisateur, id_categorie) VALUES
('Introduction à SQL', 'Bases du langage SQL.', '2024-01-10', 1, 1),
('Le HTML', 'Structure des pages web.', '2024-01-15', 1, 2),
('Le CSS', 'Mise en forme des pages web.', '2024-02-01', 2, 2),
('JavaScript', 'Pages web interactives.', '2024-02-10', 2, 2),
('Sécurité web', 'Protection des applications web.', '2024-03-01', 1, 3);

SELECT COUNT(*) AS total_articles FROM Article;

SELECT MAX(id_utilisateur) AS derniere_utilisateur FROM utilisateur;

SELECT id_utilisateur, COUNT(*) AS nb_articles
FROM Article
GROUP BY id_utilisateur;

SELECT id_utilisateur, COUNT(*) AS nb_articles
FROM Article
GROUP BY id_utilisateur
HAVING COUNT(*) >= 3;
