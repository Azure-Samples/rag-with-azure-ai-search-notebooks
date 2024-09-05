CREATE EXTENSION vector;

CREATE TABLE items (id bigserial PRIMARY KEY, embedding vector(1536));

INSERT INTO items (embedding) VALUES ('[0.0014701404143124819,
 0.0034404152538627386,
 -0.012805989943444729,...]');

 SELECT * FROM items ORDER BY embedding <=> '[-0.0126618119, -0.027928412, -0.0130874719, ...]' LIMIT 5;

 CREATE INDEX ON items USING hnsw (embedding vector_cosine_ops);