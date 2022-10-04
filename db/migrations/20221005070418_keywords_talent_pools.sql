-- migrate:up
CREATE TABLE keywords_talent_pools(
    id INT NOT NULL AUTO_INCREMENT,
    keyword_id INT NOT NULL,
    talent_pool_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (keyword_id) REFERENCES keywords (id),
    FOREIGN KEY (talent_pool_id) REFERENCES talent_pools (id)
);

-- migrate:down
DROP TABLE keywords_talent_pools;
