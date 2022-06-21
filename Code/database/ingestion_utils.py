import csv
import sys


def clean_movie(infile_name, dir_name, movie_outfile="movie.csv",
                genre_outfile="genre.csv", bridge_outfile="moviegenre.csv"):
    movie_rows = []   # [movie_id, name]
    genre_rows = {}   # {name: genre_id}
    bridge_rows = []  # [movieid, genreid]

    genre_id = 1

    with open(dir_name+infile_name) as infile:  # parse the movie input data
        reader = csv.reader(infile)
        headers = next(reader)
        print(headers)
        for row in reader:
            movie_id = row[0]
            movie_rows.append([movie_id, row[1]])  # goes into movie table

            for genre in row[2].split("|"):  # list gets split on |
                if genre not in genre_rows:
                    genre_rows[genre] = genre_id
                    genre_id += 1  # increment id counter

                bridge_rows.append((movie_id, genre_rows[genre]))  # add bridge between movie and genre

    # write out
    with open(dir_name + movie_outfile, "w", newline='') as movie_out:  # Movie table
        writer = csv.writer(movie_out, quotechar='"', quoting=csv.QUOTE_MINIMAL)
        h = ["movieID", "title"]
        writer.writerow(h)
        writer.writerows(movie_rows)

    with open(dir_name + genre_outfile, "w", newline='') as genre_out:  # Genre table
        writer = csv.writer(genre_out, quotechar='"', quoting=csv.QUOTE_MINIMAL)
        h = ["genreID", "name"]
        writer.writerow(h)
        genres = [(v, k) for k, v in genre_rows.items()]
        writer.writerows(genres)

    with open(dir_name + bridge_outfile, "w", newline='') as bridge_out:  # MovieGenre bridge table
        writer = csv.writer(bridge_out, quotechar='"', quoting=csv.QUOTE_MINIMAL)
        h = ["movieId", "GenreID"]
        writer.writerow(h)
        writer.writerows(bridge_rows)

#TAG
# clean strings (tag:tag)
# TAG AND RATING
# create users table


def clean_tag(infile_name, dir_name, tag_outfile="tag_o.csv"):
    cleaned_rows = []
    with open(dir_name + infile_name) as tag:
        reader = csv.reader(infile)
        headers = next(reader)
        print(headers)
        for row in reader:
            cleaned_rows.append([row[0], row[1], row[2],
                                 clean_string(row[3]), row[4]])

    with open(dir_name + tag_outfile, "w") as outfile:
        writer = csv.writer(outfile, quotechar='"', quoting=csv.QUOTE_MINIMAL)
        writer.writerow(headers)
        writer.writerows(user_list)


def clean_string(s):
    character_list = ['"', "'"]
    for c in character_list:
        s = s.replace(c,"")
    if len(s) > 256:
        return s[:256]
    return s

def generate_users(rating_infile, tag_infile, dir_name,
                   users_outfile="users.csv"):
    user_list = []
    for file in [rating_infile, tag_infile]:

        with open(dir_name + file) as infile:
            reader = csv.reader(infile)
            headers = next(reader)
            print(headers)
            for row in reader:
                user_list.append(row[1])

    user_list = [(id, "") for id in list(set(user_list))]
    print(user_list)
    with open(dir_name + users_outfile, "w") as outfile:
        writer = csv.writer(outfile, quotechar='"', quoting=csv.QUOTE_MINIMAL)
        h = ["userID", "fullname"]
        writer.writerow(h)
        writer.writerows(user_list)


if __name__ == '__main__':
    data_dir = "data/"
    input_datasets = ["movie_i.csv", "rating.csv", "tag.csv"]
    clean_movie(input_datasets[0], data_dir)
    generate_users(input_datasets[1], input_datasets[2], data_dir)
    clean_tag(input_datasets[2], data_dir)
