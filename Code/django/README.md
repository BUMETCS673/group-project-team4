# Steps to test locally

Make sure you are in the Recflix directory
```
# Create an isolated Python environment
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
export DB_USER='enter_db_username_here'
export DB_PASSWORD='enter_db_password_here'
export DB_HOST='enter_db_endpoint_here'
python manage.py runserver
```
In your browser go to http://localhost:8000/

Setup Django Object-Relational Mapper(ORM)
```
python manage.py makemigrations
python manage.py migrate
```