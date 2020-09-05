USE `chocopiedb`;

-- Show tables in chocopiedb
SHOW tables;

-- Check general data and columns of tables
DESCRIBE `chocopie`;
DESCRIBE `purchases`;
DESCRIBE `nutritional_info`;

-- How many chocopie boxes have I purchased?
SELECT SUM(`Quantity`)
FROM `purchases`; 
# I have purchased 17 boxes of chocopie this year.

-- How much have I spent on chocopie and how many packages that I get?
SELECT SUM((`purchases`.`Quantity`)*(`chocopie`.`Quantity per box`)) `Total packages`,
	   SUM(`purchases`.`Total Amount`) `Total Amount`
FROM `purchases` LEFT JOIN `chocopie` ON `purchases`.`Item`=`chocopie`.`Item`;
# I have spent $47.9 to purchase 17 boxes that have 120 packages of chocopie in total. 

-- How much on average did a chocopie pack cost me?
SELECT ROUND(`Total Amount`/`Total packages`,3) `Averege_cost`
FROM
	(SELECT SUM((`purchases`.`Quantity`)*(`chocopie`.`Quantity per box`)) `Total packages`,
			SUM((`purchases`.`Total Amount`)) `Total Amount`
		FROM `purchases` LEFT JOIN `chocopie` ON `purchases`.`Item`=`chocopie`.`Item`)
        `combined`;
# On average, each package of chocopie cost me 39.9 cents.

-- How much on average did each type of chocopie package cost me?
SELECT `Item`, ROUND(`Total Amount`/`Total packages`,3) `Avg package cost`
FROM
	(SELECT 	`p`.`Item` `Item`,
			SUM((`p`.`Quantity`)*(`c`.`Quantity per box`)) `Total packages`,
			SUM((`p`.`Total Amount`)) `Total Amount`
	FROM `purchases` `p` LEFT JOIN `chocopie` `c` ON `p`.`Item`=`c`.`Item`
	GROUP BY `Item`) `pc`;
# Orion chocopie is the most expensive which cost me 46.7c for the one sold in a big box (12pcs/box)
# and 40.0c for the one sold in a small box (6pcs/box). I guess economies of scale doesn't apply here.
# This also makes sense as Orion chocopie isn't available in NTUC Fairprice which is the most popular
# supermarket chain in Singapore. It can only be found in Korean marts and obviously, its price is
# marked-up much more than Lotte chocopie which is available in NTUC and cost 37.3c per package.


-- How much calories that I have been consuming by eating chocopie?
SELECT SUM((`p`.`Quantity`)*(`cn`.`box_calories`)) `Total_calories`
FROM `purchases` `p` LEFT JOIN 
	(SELECT `c`.`Item` `Item`, 
			(`c`.`Quantity per box`)*(`n`.`calories`) `box_calories`
	FROM `chocopie` `c` LEFT JOIN `nutritional_info` `n` ON `c`.`Item`=`n`.`Item`) `cn`
    ON `p`.`Item`=`cn`.`Item`;
# There are 15,222 calories from all the chocopie that I have purchased and it is worth 10 days 
# of my recommended daily calories intake!