from flask import*
import pymysql
import pymysql.cursors
app= Flask(__name__)
@app.route('/api/signup',methods=['POST'])
def signup():
    # extract values posted in the request and store them in a variable
    username=request.form['username']
    email=request.form['email']
    password=request.form['password']
    phone=request.form['phone']
    # connection to database
    connection=pymysql.connect(host='localhost',user='root',password='',database='Dailyyoghurt_swala')
    # cursor object==initialize connection/manipulation of the database
    cursor=connection.cursor()
    # sql query
    sql='INSERT INTO users(username,email,password,phone)values (%s,%s,%s,%s)'
    # prepare data to replace placeholders
    data=(username,email,password,phone)
    # we use the cursor to execute the sql under the data
    cursor.execute(sql,data)
    # save the changes
    connection.commit()
    return jsonify({'success':'Thank you for joining'})

# SIGNIN ROUTE
@app.route('/api/signin')
def signin():
    # extract posted data
    username=request.form['username']
    password=request.form['password']
    # connect to database
    connection=pymysql.connect(host='localhost',user='root',password='',database='Dailyyoghurt_swala')
    cursor=connection.cursor(pymysql.cursors.DictCursor)
    # do sql query
    sql='select* from users where username=%s and password=%s'
    data=(username,password)
    cursor.execute(sql,data)
    # check if there were raws found
    count=cursor.rowcount
    if count ==0:
        return jsonify({'message':'login failed'})
    else:
        user=cursor.fetchone()
        return  jsonify({'message':'log in successful','user':user})
if __name__ == '__main__':
    app.run(debug=True)