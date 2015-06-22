__author__ = 'antoine'

from flask import Flask, render_template
import pymysql.cursors
import os

application = Flask(__name__)

def db_connect():
    # Connect to the database
    user = os.getenv('AWS_RDS_USER')
    pw = os.getenv('AWS_RDS_PASS')
    return pymysql.connect(host='dbsite.cromvt79g3sg.eu-west-1.rds.amazonaws.com',
          user=user, passwd=pw, db='base_accidents', charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)


@application.route('/')
def index():
    connection = db_connect()
    try:
        with connection.cursor() as cursor:
            sql = "SELECT count(*) as nb FROM accident"
            cursor.execute(sql)
            result = cursor.fetchone()
    finally:
        connection.close()
    return render_template('index.html', resultat=result['nb'])

@application.route('/visu_accidents')
def visu_accidents():
    return render_template('visu_accident.html')

if __name__ == '__main__':

    application.debug = True
    application.run()
