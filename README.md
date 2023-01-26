<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/insiders.png" width="700" height="445"><br>

# Insiders Clustering

Undoubtedly the biggest and most project I've done so far, based on a problem of classifying "Insiders" customers within an existing database in an e-commerce.

The initial objective was to determine who would be a member of this particular "Insiders" group, determining the biggest and best buyers on the site.

After the first cycle, the characteristics of the Insiders group were observed, and possible ideas/suggestions were studied on what to do for each given group to approach the "Insiders" as much as possible.

In the next cycle, we used Metabase to display customer data from a local database.

In the next cycle, we deploy the entire project through AWS (Amazon), Postgres database (RDS), data updated by site professionals (Bucket S3) through a .csv, we use the processing of a machine in the cloud (R2DS ), to run the notebook with the model (Through a cronjob, with programming the execution time through Bash and using a tool called papermill ) The result of executing the notebook already sends the data to the Database (S3) Postgres , and is read through a BI tool known as Metabase.

#### This project was made by Thiago Borges Lima.

# 1. Business Problem.

A E-commerce company wants to know who expend more money at the site, and call them "Insiders", with an objective to send promotions and coupons to maxymize their sales with this group.
They need to demonstrate who these customers are through a BI platform to improve the efficiency of service to this group by the site's employees.

# 2. Business Assumptions.

First Assumption: I assume that are some features that I didn't need to use for the initial study:
Description, Stock_Code and Country.

Second Assumption: I created some features to help the model ( Feature Engineering )

Third Assumption: I removed some "Outliers" clients with strange values.


# 3. Solution Strategy

My strategy to solve this challenge was:

- Study the data, understanding the most valuables features and "Outliers"
- Created some new features to organize better the clusters
- Remove "empty" lines
- Study Uni / Bivariate graphic analysis
- Space Study with PCA, UMAP, t-SNe and Tree-Based Embedding;
- Test types of rescalling and standardization the features to get better results;
- Select the most important features;
- Solve a Clustering with K-Means, GMM,  Hierarchical Clustering and DBScan to find better method with a better Silhouette Score;
- Classifying the clusters and show who are the "Insiders"
 

**Step 01. Data Description:**

**Step 02. Feature Engineering:**

**Step 03. Data Filtering:**

**Step 04. Exploratory Data Analysis:**

**Step 05. Data Preparation:**

**Step 06. Feature Selection:**

**Step 07. Machine Learning Modelling:**

**Step 08. Hyperparameter Fine Tunning:**

**Step 09. Convert Model Performance to Business Values:**

**Step 10. Deploy Modelo to Production:**

# 4. Top 3 Data Insights

**Hypothesis 01:**

**True/False.**

**Hypothesis 02:**

**True/False.**

**Hypothesis 03:**

**True/False.**

# 5. Machine Learning Model Applied

# 6. Machine Learning Modelo Performance

# 7. Business Results

# 8. Conclusions

# 9. Lessons Learned

# 10. Next Steps to Improve

# LICENSE

# All Rights Reserved - Comunidade DS 2022
