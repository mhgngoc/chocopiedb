### Chocopiedb

> *"Orion is Chocopie, Chocopie is Orion"*

Chocopiedb is created using mysql and contains information about my chocopie purchases this year, 2020. 

**Overview of the database**
```sql
-- mysql
SHOW tables;
DESCRIBE `chocopie`;
DESCRIBE `nutritional_info`;
DESCRIBE `purchases`;
```

| Table | Description | Fields |
| - | - | - |
| chocopie | different types of chocopie boxes with number of packages per box | Item (PK),  Quantity per box |
| nutritional_info | information about calories, carbs, fat, protein per each type of chocopie package | Item (PK), calories, carbs, fat, protein |
| purchases | records of my chocopie purchases | POReference (PK), Item (PK), Quantity, Total Amount |

**Findings**
```sql
SELECT *
FROM `chocopie`;
```
In 2020, I have spent **47.90 SGD** for **11 times** purchasing Chocopie which give me **17 boxes**, or equivalent to **120 chocopie packages**. Sweetness is so in the air! And so does a fat belly...

Each pack of chocopie costs me **39.9c** on average.**Orion chocopie** is the most expensive, **46.7c** for the one sold in a big box (12pcs/box - surprise!) and **40.0c** for the one sold in a small box (6pcs/box). This also makes sense as Orion chocopie isn't available in NTUC Fairprice which is the most popular supermarket chain in Singapore. It can only be found in Korean marts and obviously, its price is marked-up much more than **Lotte chocopie** which is available in NTUC and cost **37.3c** per package.

**120 packages** of chocopie is equivalent to **15,222 calories** (!!!--fainting) which is equal to ~ 10 days of my recommended daily calories intake! But then, nothing can be compared to a package of sweet chewy chocopie....