# AIG

## HOW TO RUN
### 1. Clone repository and set up virtual environment
```
git clone https://github.com/ffauzan/aigyujiem.git
cd aigyujiem
python -m venv env
./env/scripts/activate
```

### 2. Install all requirements
```
pip install -r requirements.txt
```

### 3. Migrations
```
python manage.py makemigrations
python manage.py migrate
```

### 4. Run Server
```
python manage.py runserver
```

## Additional Information
### Database
Make database named like this:

>Database name  : aigyujie_database  
>Username       : aigyujie_user  
>Password       : cendoldawet3615

and import aigyujie_dev.sql for the final database (after user testing)

### PJM Dashboard
> url: 127.0.0.1:8000/  
> username: bambang_reviewer
> password: Bambang123

### Penulis Soal Dashboard
> url: 127.0.0.1:8000/  
> username: bambang_creator
> password: Bambang123

### Admin Dashboard
> url: 127.0.0.1:8000/admin  
> username: admin  
> password: admin

=======
# Warisan
Project capstone 19-20 di topik yang sama tentang automatic item generation

TTD, Silvia Falih dan Hanif