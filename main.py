# main.py

from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return "Hello, World! The CI/CD Pipeline Worked! Version 2.0"