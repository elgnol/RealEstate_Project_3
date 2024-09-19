from flask import Flask, render_template, jsonify
import json

app = Flask(__name__)

# Load JSON data
with open('old_average_mortgage_2018_2022.json') as f:
    average_mortgage = json.load(f)

with open('old_median_hhi_2018_2022.json') as f:
    median_hhi = json.load(f)

with open('old_unemployment_data_2018_2022.json') as f:
    unemployment_data = json.load(f)

with open('old_us_rental_data_2018_2022.json') as f:
    rental_data = json.load(f)

with open('old_us_sales_data_2018_2022.json') as f:
    sales_data = json.load(f)

# Routes
@app.route('/')
def index():
    return render_template('index.html')

@app.route('/get_data/<string:dataset>')
def get_data(dataset):
    if dataset == 'rental':
        return jsonify(rental_data)
    elif dataset == 'sales':
        return jsonify(sales_data)
    elif dataset == 'average_mortgage':
        return jsonify(average_mortgage)
    elif dataset == 'median_hhi':
        return jsonify(median_hhi)
    elif dataset == 'unemployment_data':
        return jsonify(unemployment_data)
    else:
        return jsonify({'error': 'Dataset not found!'})

if __name__ == '__main__':
    app.run(debug=True)


