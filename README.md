# YM Data Science in Production
In this assignment, we'll be working on the [Wisconsin Breast Cancer dataset](https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+(Diagnostic)])

The purpose is to create a model that is able to classify whether a person has breast cancer given a set of features. However, the data is stored across different files. In order to train the best performing model, we are going to require all data possible. To combine all the data, we'll construct a simple ETL setup.


# Part 0
Try to create a learing pipeline which incorporates the following features:
- take `main.csv` and `targets.csv` as input data and targets
- Create train and test split on the data
- Use Logistich regression to predict the targets
- Record accuracy of trained model

The initial model should reach around 76% accuracy.

# Part 1
Incorporate the two other datasets `other1.csv` and `other2.csv`. However, beware! They are modified, and cannot be directly joined with the data from `main.csv`. Hence, you should create a ETL pipeline to read in the different datasets, transform them to a unified format, and store the final result for use in the learning pipeline. Make sure the transform process on `other*.csv` is done in different (python) files, since we're going to depend on them later.

Example transform process steps:
- Read in `other1.csv`
- Modify the dataframe to correspond to the `main.csv`
- store the results in `other1_transformed.csv`

Finally, in another separate file, write functionality to join the three datasets, and store the result in `big_data.csv`. This you can use in your training pipeline, which should now reach an accuracy of 97%.

# Part 2
Next up, we're going to incorporate Airflow into our pipeline. Airflow allows us to periodically run the pipeline. For this, you need to have the python package `apache-airflow` installed. Next, take a look at the [Airflow documentation](https://airflow.apache.org/docs/stable/tutorial.html). Based on this example, can you construct a DAG definition that runs our pipeline?

## Tips:
- Make sure the paths in your python files are absolute.
- `cmd1.sh` contains some commands for initializing your Airflow environment.

# Part 3 (extra)