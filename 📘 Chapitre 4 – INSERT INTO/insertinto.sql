/*Table ARTICLE*/

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
/*Table COMMENTAIRe */

CREATE TABLE commentaire (
    id_commentaire INT AUTO_INCREMENT PRIMARY KEY,
    contenu TEXT NOT NULL,
    date_publication DATE,
    id_utilisateur INT NOT NULL,
    id_article INT NOT NULL,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur),
    FOREIGN KEY (id_article) REFERENCES article(id_article) 
);
INSERT INTO article (titre, contenu, date_publication, id_utilisateur, id_categorie)
VALUES
('Article SQL', 'Contenu sur SQL', '2026-01-04', 1, 1),
('Article PHP', 'Contenu sur PHP', '2026-01-07', 2, 1);

INSERT INTO commentaire (contenu, date_publication, id_utilisateur, id_article)
VALUES
('Très bon article', '2026-01-08', 2, 1),
('Merci pour les explications', '2026-01-08', 1, 2);
