USE englishnews

CREATE TABLE role(
                     role_id bigint NOT NULL PRIMARY KEY auto_increment,
                     role_name VARCHAR(255) NOT NULL,
                     role_code VARCHAR(255) NOT NULL,
                     role_created_date TIMESTAMP NULL,
                     role_modified_date TIMESTAMP NULL,
                     role_created_by VARCHAR(255) NULL,
                     role_modified_by VARCHAR(255) NULL
);

CREATE TABLE user (
                      user_id bigint NOT NULL PRIMARY KEY auto_increment,
                      user_name VARCHAR(150) NOT NULL,
                      user_password VARCHAR(150) NOT NULL,
                      user_fullname VARCHAR(150) NULL,
                      user_status int NOT NULL,
                      roleid bigint NOT NULL,
                      user_created_date TIMESTAMP NULL,
                      user_modified_date TIMESTAMP NULL,
                      user_created_by VARCHAR(255) NULL,
                      user_modified_by VARCHAR(255) NULL
);

ALTER TABLE user ADD CONSTRAINT fk_user_role FOREIGN KEY (roleid) REFERENCES role(role_id);


--drop table news
CREATE TABLE news (
                      news_id bigint NOT NULL PRIMARY KEY auto_increment,
                      news_title VARCHAR(255) NULL,
                      news_thumbnail VARCHAR(255) NULL,
                      news_shortdescription TEXT NULL,
                      news_content TEXT NULL,
                      categoryid bigint NOT NULL,

                      news_created_date TIMESTAMP NULL,
                      news_modified_date TIMESTAMP NULL,
                      news_created_by VARCHAR(255) NULL,
                      news_smodified_by VARCHAR(255) NULL
);

CREATE TABLE category (
                          category_id bigint NOT NULL PRIMARY KEY auto_increment,
                          category_name VARCHAR(255) NOT NULL,
                          category_code VARCHAR(255) NOT NULL,

                          category_created_date TIMESTAMP NULL,
                          category_modified_date TIMESTAMP NULL,
                          category_created_by VARCHAR(255) NULL,
                          category_modified_by VARCHAR(255) NULL
);
--select * from news
--ALTER TABLE news
--RENAME COLUMN news_title TO news_tittle;
--
--ALTER TABLE category
--ADD category_code VARCHAR(255) NOT NULL
--
--ALTER TABLE category
--DROP category_code_comment


ALTER TABLE news ADD CONSTRAINT fk_news_category FOREIGN KEY (categoryid) REFERENCES category(category_id);

CREATE TABLE comment (
                         commemnt_id bigint NOT NULL PRIMARY KEY auto_increment,
                         comment_content TEXT NOT NULL,
                         user_id bigint NOT NULL,
                         news_id bigint NOT NULL,
                         conmemt_created_date TIMESTAMP NULL,
                         comment_modified_date TIMESTAMP NULL,
                         comment_created_by VARCHAR(255) NULL,
                         comment_modified_by VARCHAR(255) NULL
);

ALTER TABLE comment ADD CONSTRAINT fk_comment_user FOREIGN KEY (user_id) REFERENCES user(user_id);
ALTER TABLE comment ADD CONSTRAINT fk_comment_news FOREIGN KEY (news_id) REFERENCES news(news_id);
