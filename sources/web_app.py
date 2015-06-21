__author__ = 'antoine'

from flask import Flask, render_template
import pymysql.cursors

application = Flask(__name__)

def db_connect():
    # Connect to the database
    return pymysql.connect(host='dbsite.cromvt79g3sg.eu-west-1.rds.amazonaws.com',
          user='root', passwd='antoinesite', db='dbsiteantoine', charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)


@application.route('/')
def index():
    connection = db_connect()
    try:
        with connection.cursor() as cursor:
            sql = "SELECT count(*) as nb FROM entries"
            cursor.execute(sql)
            result = cursor.fetchone()
    finally:
        connection.close()
    return render_template('index.html', resultat=result['nb'])

if __name__ == '__main__':
    application.debug = True
    application.run()
