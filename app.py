from flask import Flask
import os

app = Flask(__name__)
LOG_DIR = '/app/logs'
os.makedirs(LOG_DIR, exist_ok=True)

@app.route('/')
def home():
    log_file = os.path.join(LOG_DIR, 'access.log')
    with open(log_file, 'a') as f:
        f.write('Homepage visited\n')
    return "Welcome to My Dockerized App!"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
