# 📦 GreenBox: End-to-End Marketing Analytics & LTV Prediction

<img width="1000" height="1000" alt="GreenBox" src="https://github.com/user-attachments/assets/5bcf355c-201b-4cb7-9e93-dde53a5faf44" />


## 🚀 Executive Summary
**GreenBox** is a fictional sustainable subscription service. This project simulates the full lifecycle of a Marketing Data Analyst—from generating raw user data to building predictive machine learning models and executive dashboards.

The goal was to answer critical business questions:
* *Which marketing channels drive the highest ROI?*
* *Did the "Save Planet" A/B test variant actually increase conversions?*
* *Can we predict a user's Lifetime Value (LTV) after just 7 days?*

## 🛠️ Tech Stack
* **Data Generation:** Python (`NumPy`, `Pandas`)
* **Data Warehousing:** Google BigQuery (SQL)
* **Analysis & EDA:** Python (`Polars`, `Plotly`, `SciPy`)
* **Machine Learning:** Scikit-Learn (Linear Regression, K-Means Clustering)
* **Dashboarding:** Looker Studio

---

## 📊 Project Modules

### 1. Data Engineering & ETL
Generated a synthetic dataset of **10,000+ users** and **50,000+ events** to simulate realistic messy data.
* **Users:** Demographics, Acquisition Channel, Device.
* **Events:** Timestamps for `view_landing_page`, `add_to_cart`, `checkout`, `purchase`.
* **Spend:** Daily ad spend aggregation across Facebook, TikTok, Instagram, and Google Ads.
* *Pipeline:* Python script -> CSV -> Google BigQuery.

### 2. SQL Analytics (BigQuery)
Performed complex queries to extract KPIs, utilizing **Window Functions**, **CTEs**, and **Joins**.
* Calculated **CPA** (Cost Per Acquisition) by joining daily spend with user acquisition timestamps.
* Built **Retention Cohorts** to analyze monthly churn.
* Created a "Golden Table" (`dashboard_daily_overview`) to feed the BI tool.

### 3. A/B Testing & Statistics
Analyzed the impact of the "Save Money" (Control) vs. "Save Planet" (Variant) landing page test.
* **Result:** The Variant group showed a **30% Conversion Rate** vs. 22% for Control.
* **Significance:** confirmed via **Chi-Square Test** ($p < 0.05$).

### 4. Predictive Machine Learning
Built a **Linear Regression Model** to predict Customer Lifetime Value (LTV) using only *Day 7* behavior.
* **Features:** Views, Cart Adds, First Week Revenue.
* **Performance:** Model achieved an **R-Squared of ~0.90**.
* **Key Insight:** Users who "Add to Cart" multiple times without buying in Week 1 are high-potential targets for retargeting.

### 5. Customer Segmentation (Clustering)
Used **K-Means Clustering** to group users into 3 personas based on behavior:
1.  **Window Shoppers:** Low engagement, $0 spend.
2.  **Browsers:** High engagement, low spend (Discount seekers).
3.  **Power Users:** High engagement, High LTV.

---

## 📈 Visualizations

### Marketing Analytics Dashboard (Looker Studio)
*Live monitoring of ROAS, Daily Revenue, and Channel Performance.*

<img width="1191" height="845" alt="Greenbox-Screenshot" src="https://github.com/user-attachments/assets/e9f6a255-93a2-4053-8e1f-e947790c9add" />


---

## 💻 How to Run This Project

1.  **Clone the Repo:**
    ```bash
    git clone [https://github.com/yourusername/greenbox-analytics.git](https://github.com/yourusername/greenbox-analytics.git)
    ```
2.  **Generate Data:**
    Run `data_generation.py` to create the raw CSV files.
3.  **Analysis:**
    Open `analysis_notebook.ipynb` in Jupyter or Google Colab to run the Polars/Plotly analysis and ML models.
4.  **SQL:**
    Copy queries from `/sql_queries` into your BigQuery console.

---
