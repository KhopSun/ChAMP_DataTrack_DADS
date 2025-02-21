# 🕒 ChAMP Engineering Data Track: Case Duration Outlier Detection & Correlation Analysis (Traffy Fondou)

This **Data Science & Analysis** project is part of the **ChAMP Engineering Data Track**, utilizing real-world data from **Bangkok Metropolitan Administration (กทม)** to identify insights, diagnose potential inefficiencies, and propose actionable solutions regarding case resolution times.

---

## 🚀 Project Overview
This Data Science & Data Analysis project is part of ChAMP Engineering Data Track aimed at improving the efficiency of **case resolution processes in กทม** by analyzing case duration data, detecting anomalies, and uncovering patterns through statistical and machine learning techniques. The analysis focuses on:

1. **Outlier Detection:** Identifying cases that take significantly longer than usual to resolve using **statistical methods (IQR, percentile thresholds)** and **machine learning (Isolation Forest)**.
2. **Correlation Analysis:** Exploring relationships between case duration and key factors such as **reopens, view counts, and organizational actions** to determine possible causes of delays.
3. **Filtering & Comparative Analysis:** Investigating specific case types (e.g., **Billboards, Electricity, Road and Sidewalk**) and filtering data by percentile-based thresholds (e.g., **excluding lower 5% cases**).
4. **Data-Driven Recommendations:** Providing insights into why some cases take longer to resolve and **suggesting potential solutions** for efficiency improvement.

---

## 🎯 Key Features

- **Outlier Detection:**  
  - Uses **IQR (Interquartile Range) Method** and **percentile thresholds** to detect extreme cases.
  - Implements **Isolation Forest (ML)** to automatically identify anomalous case durations.

- **Correlation Analysis:**  
  - Generates **correlation heatmaps** to analyze relationships between case duration and other variables.
  - Performs targeted correlation studies for **specific case types and filtered datasets**.

- **Filtering and Segmentation:**  
  - Analyzes **upper 5% cases (extreme long durations)** for **Billboards**.
  - Excludes the **lower 5% of cases** for **Electricity & Road and Sidewalk** to focus on meaningful trends.

- **Visualization & Insights:**  
  - Produces **annotated bar charts, box plots, and heatmaps** using Matplotlib & Seaborn.
  - Highlights key problem areas using **dynamic filtering and comparative analysis**.

---

## 🔬 Key Findings & Insights

### 🏙️ Case Types with the Most Outliers
Certain case types exhibit **significantly skewed resolution times**, leading to **delays** in their resolution.  
_(To be updated based on results)_

### 📊 Factors Affecting Case Duration
From correlation analysis, the following variables show a **strong positive relationship** with longer case durations:
- **Number of Reopens (`count_reopen`)** → Cases that are repeatedly reopened take significantly longer to resolve.
- **View Count (`view_count`)** → High public engagement might indicate complex cases requiring more time.
- **Organization Action Length (`organization_action_len`)** → Lengthier actions may correlate with inefficiencies in processing.

### 💡 Suggested Solutions
- **Process Streamlining:** Identify types of **organizational actions** that contribute to longer delays and optimize workflows.
- **Prioritization Strategy:** Focus on **frequently reopened cases** and introduce measures to resolve them effectively.
- **Public Engagement Analysis:** Evaluate whether high **view counts** correlate with complex cases and allocate resources accordingly.

---

## 🧠 Machine Learning Model

The project incorporates **Isolation Forest**, an unsupervised anomaly detection model from **Scikit-Learn**, to detect cases with unusually long or short resolution times.

- **Why Isolation Forest?**
  - Works well with **log-transformed duration data**.
  - Detects anomalies **without requiring predefined thresholds**.
  - Identifies both **upper and lower outliers**, making it ideal for this analysis.

---

## 🧰 Technologies Used
- **Data Handling:** Pandas
- **Visualization:** Matplotlib, Seaborn, Plotly
- **Machine Learning:** Scikit-Learn (Isolation Forest)
- **Statistical Analysis:** NumPy, SciPy

---

## 🌟 Acknowledgements
Special thanks to my ChAMP Engineering, Data Track Mentors, fellow Mentees, and Bangkok Metropolitan Administration (กทม) for their support and contributions!
