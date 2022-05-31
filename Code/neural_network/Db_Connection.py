import pyodbc

# Connect to the AWS rds
for driver in pyodbc.drivers():
    print(driver)

server = "cs673-team4-db.c5wjsyde0zav.us-east-1.rds.amazonaws.com,5432"
database = "UserMovieXWalk"
conn_str = (
    "DRIVER={PostgreSQL Unicode};"
    "DATABASE=postgres;"
    "UID=team4user;"
    "PWD=cs673team4Pass!;"
    "SERVER=cs673-team4-db.c5wjsyde0zav.us-east-1.rds.amazonaws.com;"
    "PORT=5432;"
    )

def insert_user_preference_data(user_ids, movie_ids, ratings):
    with pyodbc.connect(conn_str) as cnxn:

        cursor = cnxn.cursor()
        insert_query = '''INSERT INTO UserMovieXWalk (user_id, movie_id, rating)
                          VALUES(?, ?, ?)'''

        assert len(user_ids) == len(movie_ids) and len(user_ids) == len(ratings)
        # Insert the user, movie and the rating data to the crosswalk table
        for i in range(len(user_ids)):
            values = (user_ids[i], movie_ids[i], ratings[i])
            cursor.execute(insert_query, values)

        cnxn.commit()

def extract_user_preference_data(condition):
    with pyodbc.connect(conn_str) as cnxn:

        cursor = cnxn.cursor()
        user_ids = []
        movie_ids = []
        ratings = []
        if condition is None:
            cursor.execute('SELECT * FROM UserMovieXwalk')
        else:
            cursor.execute('SELECT * FROM Movies WHERE ' + condition)
        for row in cursor:
            user_ids.append(row[0])
            movie_ids.append(row[1])
            ratings.append(row[2])

    return user_ids, movie_ids, ratings

def extract_movie_data(condition):
    with pyodbc.connect(conn_str) as cnxn:

        cursor = cnxn.cursor()
        movie_ids = []
        titles = []
        genres = []
        if condition is None:
            cursor.execute('SELECT * FROM Movies')
        else:
            cursor.execute('SELECT * FROM Movies WHERE ' + condition)
        for row in cursor:
            movie_ids.append(row[0])
            titles.append(row[1])
            genres.append(row[2])

    return movie_ids, titles, genres
