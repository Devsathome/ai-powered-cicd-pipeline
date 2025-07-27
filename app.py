from flask import Flask
#create an instance of the Flask application
app = Flask(__name__)
#Define a route for the root URL that our app will respond to
@app.route('/')
def hello_world():
    return 'Hello, Deploybot!'

# This block makes the app runnable directly with "python app.py"
if __name__ == '__main__':
    #0.0.0.0 means "listen on all available network interfaces"
    # port=5000 is the port it will listen on
    app.run(host='0.0.0.0', port=5000)