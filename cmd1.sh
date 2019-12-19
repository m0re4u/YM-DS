pip install apache-airflow

# airflow needs a home, ~/airflow is the default,
# but you can lay foundation somewhere else if you prefer
# (optional)
export AIRFLOW_HOME=~/project/work/YM-training-assignment-2
export SLUGIFY_USES_TEXT_UNIDECODE=yes


# initialize the database
airflow initdb

# start the web server, default port is 8080
# After that:
# visit localhost:8080 in the browser and enable the example dag in the home page
airflow webserver -p 8080


# Launch the airflow scheduler
airflow scheduler



