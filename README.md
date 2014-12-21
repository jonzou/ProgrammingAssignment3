This code clean the raw UCI samsung body tracking data to the format step 5 required:
1. read feature data and use mean/std only for train/test
2. change the colname to feature names
3. cbind subject to train/test dataframe
4. cbind activity names from activity files and y data files
5. melt data frame for mean
6. average for each subject/activity/feature
7. cast back to data frame with every row for subject/activity, col for each feature 
