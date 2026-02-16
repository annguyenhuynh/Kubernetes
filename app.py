from flask import Flask
from redis import Redis

app = Flask(__name__)
redisDB = Redis(host='redis-db', port=6379)

@app.route('/')
def welcomeToKodeKloud():
    redisDB.incr('visitorCount')
    visitorCount = str(redisDB.get('visitorCount'), 'utf-8')
    return "Welcome to KODKLOUD! Visitor count: " + visitorCount

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)