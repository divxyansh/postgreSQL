--Add Constraints

CREATE TABLE web_links(
	link_id SERIAL PRIMARY KEY,
	link_url VARCHAR(255) NOT NULL,
	link_target VARCHAR(20)
)

SELECT * FROM web_links

INSERT INTO web_links(link_url, link_target) VALUES('https://www.google.com','_blank')
INSERT INTO web_links(link_url, link_target) VALUES('https://www.amazon.com','_blank')

--To accept unique values
ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE (link_url)

--To set a column only defined allowed/acceptable values
ALTER TABLE web_links
ADD COLUMN is_enable VARCHAR(2)

INSERT INTO web_links(link_url, link_target,is_enable) VALUES('https://www.netflix.com','_blank','Y')

ALTER TABLE web_links
ADD CHECK (is_enable IN ('Y','N'))


INSERT INTO web_links(link_url, link_target,is_enable) VALUES('https://www.citi.com','_blank','Q')