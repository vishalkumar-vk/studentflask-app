from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        # Get form data
        name = request.form['name']
        roll_number = request.form['roll_number']
        course = request.form['course']

        return render_template('index.html', name=name, roll_number=roll_number, course=course)
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)
