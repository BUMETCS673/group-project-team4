from django.Recflix.settings import DB_HOST, DB_PASSWORD, DB_USER
import psycopg2

def connect_postgres():
    try:
        conn = psycopg2.connect(
            host=str(DB_HOST),
            database="postgres", 
            user=str(DB_USER), 
            password=str(DB_PASSWORD), 
            port="5432")
        conn.close()
        return True
    except psycopg2.OperationalError as e:
        print('Unable to connect!\n{0}').format(e)
        return False

def test_connect_postgres():
    assert connect_postgres() == True