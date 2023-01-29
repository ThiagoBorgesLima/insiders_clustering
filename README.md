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
 



## **Step 01. Data Description:**



Attribute | Definition
------------ | -------------
|CustomerID  | an Id that represents a customer|
|InvoiceNO | the sale number from site|
|StockCode| the product code from stock|
|Description | the description about the product|
|Quantity | the number of products in the Invoice|
|InvoiceDate  | the date of the purchase |
|UnitPrice | the value for the unit|
|Country | where are the customer buying from|



## **Step 02. Feature Engineering:**

Attribute | Definition
------------ | -------------
|Gross Revenue  | how much the client expend totally|
|Recency | how often the client buys|
|Quantity of Purchase| how many purchases the clients made|
|Quantity of Items Purchased | the quantity of items|
|Quantity of Products Purchased | the quantity of unique products|
|Average Ticket Value  | the average ticket |
|Average Recency Days | the average recency days for each client|
|Frequency Purchased | how many times the clients buy some products during a time|
|Number of Returns | how many returns the clients realizes|
|Basket Size | how many items are in then clients basktet|
|Unique Basket Size | how many unique items are in the clients baskets|


## **Step 03. Data Filtering:**

I studied the dataset and removed some "Outliers". 



## **Step 04. Exploratory Data Analysis:**

During the Exploratory Data Analysis I founded some strange values, but after explore them I verified they as true values.


## **Step 05. Data Preparation:**

For a data preparation I made a Space Organization with some models with Embedding:


### PCA
<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/processed/embedding_pca.png" width="700" height="445"><br>

### UMAP
<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/processed/emedding_umap.png" width="700" height="445"><br>

### TSNE
<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/processed/embedding_tsne.png" width="700" height="445"><br>

### Tree
<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/processed/embedding_tree.png" width="700" height="445"><br>


## **Step 06. Feature Selection:**

For the feature selection was made a study with a Bivariate Analysis, and the result:

CustomerID, Gross_Revenue, Recency_Days, Qtde_Products, Frequency and Qtde_Returns.



<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/MindMap.png" width="1000" height="500"><br>
Mindmap


## **Step 07. Machine Learning Modelling:**

To choose the number of clusters, I used some models with silhouette score:

### K-Means
<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/processed/kmeans.png" width="700" height="445"><br>

### GMM
<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/processed/gmm.png" width="700" height="445"><br>

### Hierarchical Clustering
<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/processed/hcsilhouette.png" width="700" height="445"><br>

#### Dendogram:
<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/processed/hc.png" width="700" height="445"><br>

### KElbow Visualizer
<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/processed/kelbow.png" width="700" height="445"><br>

### Silhouette Score
<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/processed/silhouette.png" width="700" height="445"><br>


### Final Tree Embedding with 23 Clusters and Silhouette Score 0,66
<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/processed/tree_embedding_final.png" width="1000" height="445"><br>


## **Step 08. Convert Model Performance to Business Values / Cluster Analysis:**
<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/processed/clusters_table.png" width="700" height="445"><br>





# 4. Top 3 Data Insights

**Hypothesis 01: Cluster Insiders customers have a purchase volume (revenue) above 10% of total purchases** 

**True.**
**ANSWER**: True, the insider cluster has a purchase volume of 49%.


**Hypothesis 02: Cluster Insiders customers have an average number of returns below the average of the total customer base**

**False.**
**Answer**: False, The insiders cluster has a return average above the general average. ( 187% )


**Hypothesis 03: The median billing by customers of the cluster insiders is 10% higher than the median billing overall.**

**True.**
**Answer**: True, median billing by cluster customers is 342%.



# 5. Deploy Modelo to Production:



<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/screenshots/infratotal2.png" width="1100" height="600"><br>



<img src="https://github.com/ThiagoBorgesLima/insiders_clustering/blob/master/data/processed/insiders_dash.png" width="1100" height="600"><br>




# 6. Conclusions

A Clustering can show much things about some data, you can organize clients, sales, delivery and more. If you need to understand your business, approach with clients or get a better delivery system, clustering will help with this.
For the Insiders campaign, the E-commerce now can work with the segmentation and try to solve other clusters to come next to Insiders. Example cluster 2, have a loot of devolutions, why they do this? Let's work to solve this and sell more and more.
The E-commerce now can work individually with all different clusters and try to get better sales.



# 7. Next Steps to Improve

- AWS improvements
- Model Fine Tunning
- Power BI / Tableau 


# LICENSE

# All Rights Reserved - Comunidade DS 2022
