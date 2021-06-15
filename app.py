import logging

from flask import Flask

logging.basicConfig(level=logging.INFO)

app = Flask(__name__)

@app.route("/")
def hello_world():
    app.logger.info("Serving new request")
    return "<p>Hello, World!</p>\n"
