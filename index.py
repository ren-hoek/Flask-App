from flask import Flask, render_template
app = Flask(__name__,
        static_url_path="/root_url/static")

@app.route("/root_url/")
def home():
    return render_template('home.html')

if __name__ == "__main__":
    app.run(host='0.0.0.0')
