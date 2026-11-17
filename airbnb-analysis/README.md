# Airbnb Market Analysis

## Executive Summary

This project analyzed approximately 49,000 Airbnb listings in New York City using PostgreSQL and Python to identify pricing drivers, market concentration, and revenue opportunities.

Key findings showed that location and room type were the strongest predictors of pricing, while professional operators managed a meaningful portion of available inventory.

## Objective

Identify key drivers of Airbnb pricing and market concentration in New York City.

## Dataset

## Tools

- Python
- Pandas
- PostgreSQL
- Jupyter Notebook
- Git

## SQL Analysis

The dataset was imported into PostgreSQL and analyzed using aggregation, filtering, grouping, and window functions to identify pricing trends, market concentration, and inventory characteristics across New York City Airbnb listings.

### Average Price by Borough

**Business Question:** Which boroughs command the highest average nightly rates?

Using SQL aggregation and grouping, average listing prices were calculated across each borough.

**Result:**

| Borough | Avg. Price ($) | Listings |
|----------|----------:|----------:|
| Manhattan | 196.88 | 21,661 |
| Brooklyn | 124.38 | 20,104 |
| Staten Island | 114.81 | 373 |
| Queens | 99.52 | 5,666 |
| Bronx | 87.50 | 1,091 |

**Insight:**

Manhattan recorded both the highest average nightly rate and the largest inventory of listings, making it the most economically significant Airbnb market in New York City.

### Average Price by Room Type

**Business Question:** How does accommodation type influence nightly pricing?

Average prices were calculated for each room category.

**Result:**

| Room Type | Avg. Price ($) |
|------------|----------:|
| Entire Home/Apt | 211.79 |
| Private Room | 89.78 |
| Shared Room | 70.13 |

**Insight:**

Entire-home listings generated the highest average nightly rates, commanding approximately a 136% premium over private-room listings. This suggests accommodation type is one of the strongest drivers of revenue potential.

### High-Value Neighborhoods

**Business Question:** Which neighborhoods offer the highest pricing potential while maintaining meaningful market presence?

Neighborhood-level pricing analysis was conducted for neighborhoods with at least 50 listings.

**Result:**

| Neighborhood | Avg. Price ($) | Listings |
|--------------|----------:|----------:|
| Tribeca | 490.64 | 177 |
| Battery Park City | 367.56 | 70 |
| Flatiron District | 341.93 | 80 |
| SoHo | 287.10 | 358 |
| Midtown | 282.72 | 1,545 |

**Insight:**

Tribeca achieved the highest average nightly rate, while Midtown stood out due to its combination of premium pricing and substantial inventory. This suggests Midtown may offer the strongest revenue opportunity at scale.

### Host Concentration

**Business Question:** Is inventory distributed among individual hosts or concentrated among professional operators?

Hosts were ranked by total listing count.

**Result:**

The largest host managed 327 listings, while several commercial operators maintained portfolios exceeding 90 listings.

**Insight:**

The presence of organizations such as Sonder, Blueground, and Corporate Housing suggests that a meaningful portion of Airbnb inventory is professionally managed rather than operating as traditional peer-to-peer home sharing.

## Key Findings

- Manhattan had the highest average nightly rate ($196.88) and the largest inventory of listings.
- Entire-home listings averaged $211.79 per night, generating approximately 136% higher rates than private-room listings.
- Location and accommodation type showed a stronger relationship with pricing than review volume, availability, or minimum-night requirements.
- A meaningful share of inventory appears to be controlled by professional operators, with the largest host managing 327 listings.

## Findings

### Pricing by Borough

Manhattan listings averaged $196.88 per night, exceeding Brooklyn listings by approximately 58% and Bronx listings by more than 100%.

### Pricing by Room Type

Entire-home listings averaged $211.79 per night, approximately 2.4 times higher than private-room listings.

### Correlation Analysis

Correlation analysis found little relationship between price and review volume (-0.048), availability (0.082), or minimum-night requirements (0.043). This suggests that location and accommodation type have a greater influence on pricing than these operational variables.

### High-Value Neighborhoods

Tribeca recorded the highest average nightly rate ($490.64), followed by Battery Park City ($367.56) and the Flatiron District ($341.93).

Midtown emerged as a particularly attractive market due to its combination of high average pricing ($282.72) and substantial inventory (1,545 listings), suggesting strong revenue potential at scale.

## Business Recommendations

### Pricing Strategy

Hosts seeking to maximize revenue should prioritize entire-home listings where feasible, as these command substantially higher average nightly rates than private or shared accommodations.

### Market Selection

Manhattan remains the most economically significant Airbnb market due to its combination of premium pricing and large inventory volume.

### Neighborhood Opportunity

Midtown represents a particularly attractive market due to its balance of high average pricing and substantial listing activity.

### Marketplace Structure

The presence of large commercial operators suggests the platform functions as both a peer-to-peer marketplace and a professional hospitality channel.