# 💰 The Pricing Paradox
### *Why do identical products sell at wildly different prices — and what actually drives that gap?*

> **"You are not buying the product. You are buying the right to brag."**

---

## 🧠 The Story

If PROJ01 was my introduction to consulting-grade analytics, PROJ02 is where things got genuinely hard.

I started with a question — why does a Hermès bag cost $38,000 when the leather costs $200? The obvious answer is "brand." But that's a label, not an answer.

I wanted to measure it. So I built a dataset with AI assistance from publicly available data, structured it around a BCG framework, and let the data tell me what actually drives luxury pricing power.

What I found surprised me.

---

## 🎯 Hypothesis
*"Pricing power in luxury fashion is driven by perceived exclusivity and brand legacy — not product quality."*

---

## 🔺 MECE Framework — 4 Pillars

| Pillar | Key Finding |
|--------|-------------|
| 🚪 **Access Control** | Boutique Only brands charge **82x** more than Mass Retail |
| 👑 **Brand Legacy** | Legacy 100+ yr brands charge **17x** more than upcoming brands |
| 📣 **Perceived Value** | Tier 1 spends the LEAST on advertising — silence is the strategy |
| 🧵 **Craftsmanship** | Weakest contributor — proves the hypothesis by elimination |

---

## 💡 3 Hero Numbers

**82x** — price gap between Boutique Only and Mass Retail channels

**17x** — price gap between Legacy 100+ and Upcoming brands

**4x** — pricing power multiplier for every 50 years of brand history

---

## ⚠️ The Stuck in the Middle Trap

Tier 2 (accessible luxury) has **47% more stores** than Tier 1 but generates **less revenue**.
24 of those stores are outlets — discounting their way out of relevance.
Volume without pricing power is just noise.

---

## 🔍 What I Did Technically

**Data Cleaning — MySQL**
- Created a working dataset from raw using `CREATE TABLE LIKE` + `INSERT`
- Dropped irrelevant columns with `ALTER TABLE`

**Exploratory Data Analysis — MySQL**
- Used `CASE WHEN` to engineer a new `heritage` column from `brand_founded_year` — bucketed into Legacy 100+, True Heritage 50+, and Upcoming
- Used `ALTER TABLE` + `UPDATE` to permanently add derived columns to the dataset
- Used `AVG` + `GROUP BY` to analyse price and revenue across tiers, distribution channels and heritage buckets
- Used `COUNT DISTINCT` for brand-level distribution and marketing analysis
- Used `WHERE` + filters for pillar-specific deep dives across all 4 MECE pillars

**Visualisation — Power BI**
- Built a 3-page dashboard: Overview · Exclusivity · Heritage
- Used bar charts, treemaps, and KPI cards to surface the 82x and 17x findings

---

## 🗂️ Dataset

Built with AI assistance from publicly available brand data.

| Property | Detail |
|----------|--------|
| Brands | 30 across 3 tiers |
| Products | 232 |
| Columns | 17 |
| Period | 2024 public data |

---

## 🛠️ Tools

`MySQL` — data cleaning + EDA · `Power BI` — dashboard · `Excel` — dataset construction

---

## 📁 Files

```
pricing-paradox/
├── dataset/        → raw + cleaned CSV
├── sql/            → DC1.sql (cleaning) + EDA.sql (analysis)
├── visualisation/  → Power BI .pbix file
└── README.md
```

---

## 👤 Rohit Khot — Fresher Data Analyst

Thinking like a detective. Communicating like a consultant.

🔗 [LinkedIn](https://linkedin.com/in/rohitkhot-analyst) · [GitHub](https://github.com/RohitKhot-47) · 📧 rohitkhot.analytics@gmail.com

*Part of an ongoing consulting-style portfolio · PROJ01 → The Startup Graveyard (McKinsey)*
