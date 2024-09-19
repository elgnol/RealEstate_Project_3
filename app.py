from flask import Flask, render_template, jsonify
import json

app = Flask(__name__)

# Function to load JSON data with error handling
def load_json(file_name):
    try:
        with open(file_name) as f:
            return json.load(f)
    except Exception as e:
        print(f"Error loading {file_name}: {e}")
        return {}

# Load JSON data
average_mortgage = load_json('mortgage_rate_data_2018_2022.json')
median_hhi = load_json('median_hhi__data_2018_2022.json')
unemployment_data = load_json('unemployment_data_2018_2022.json')
rental_data = load_json('us_rental_data_2018_2022.json')
sales_data = load_json('us_home_sales_data_2018_2022.json')
value_data = load_json('us_home_value_data_2018_2022.json')

# wrap data with appropriate key
def wrap_data_with_key(data, key_name):
    wrapped_data = {}

    # If the data is a list, iterate through it
    if isinstance(data, list):
        for item in data:
            for date, value in item.items():
                # Only process dates and check date format
                if isinstance(date, str) and date.count('-') == 2:  
                    wrapped_data[date] = {key_name: value}
    elif isinstance(data, dict):
        for date, value in data.items():
            wrapped_data[date] = {key_name: value}

    return wrapped_data
# Homepage Route 
@app.route('/')
def index():
    return render_template('index.html')

# Route for getting the data
@app.route('/get_data/<string:dataset>')
def get_data(dataset):
    # Need to debug having issues with charts
    # Print the type of data 
    if dataset == 'rental':
        print(type(rental_data)) 
        print(rental_data[0])
        return jsonify(wrap_data_with_key(rental_data, 'Rentals'))
    elif dataset == 'sales':
        print(type(sales_data))  
        print(sales_data[0])
        return jsonify(wrap_data_with_key(sales_data, 'Sales'))
    elif dataset == 'home_value':
        print(type(value_data))  
        print(value_data[0]) 
        return jsonify(wrap_data_with_key(value_data, 'Home Value'))
    elif dataset == 'average_mortgage':
        return jsonify(average_mortgage)
    elif dataset == 'median_hhi':
        return jsonify(median_hhi)
    elif dataset == 'unemployment_data':
        return jsonify(unemployment_data)
    else:
        return jsonify({'error': 'Dataset not found!'}), 404

if __name__ == '__main__':
    app.run(debug=True)
