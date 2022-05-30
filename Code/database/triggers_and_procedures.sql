-- trigger template
CREATE Function func()
RETURNS trigger
LANGUAGE plpgsql 
AS $$
BEGIN

END
$$

CREATE Trigger func_trigger
BEFORE DELETE ON Movie
EXECUTE Procedure func();


-- procedures -----------------------------------------------
-- tag and rating both reference user, which means we need the User table to have
-- all userIDs referenced. When you try to add a rating from a user that isn't in the databse, 
-- make sure you insert the user into the database first. 
CREATE or REPLACE procedure insert_genre (genre_name)
language plpgsql
as $$
declare
begin

insert into Genre (genreID, genre_name)
values (next_val('genre_seq', genre_name));

end; 
$$
---------------------------------------------------------------
CREATE or REPLACE procedure insert_rating(userid integer, movieid integer, rating decimal(1,1), rating_time timestamp)
language plpgsql
as $$
declare

begin
INSERT into Users(userid)
VALUES (userid) ON CONFLICT DO NOTHING;

INSERT into Rating (ratingId, userID, movieID, rating, rating_timestamp)
VALUES (next_val('rating_seq'), userid, movieid, rating, rating_time);

end; 
$$;
---------------------------------------------------------------
CREATE or REPLACE procedure insert_tag(userid integer, movieid integer, tag varchar(32), tag_time timestamp)
language plpgsql
as $$
declare

begin
INSERT into Users(userid)
VALUES (userid) ON CONFLICT DO NOTHING;

INSERT into Tag (tagID, userID, movieID, tag, tag_timestamp)
VALUES (next_val('tag_seq'), userid, movieid, tag, tag_time);

end; 
$$