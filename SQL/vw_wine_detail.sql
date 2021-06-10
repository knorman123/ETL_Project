CREATE VIEW vw_wine_detail AS 
SELECT wine.wine_id, wine_price.price, wine.country, wine.title, wine.variety, wine_points.points, wine_servings.wine_servings
FROM wine
INNER JOIN wine_price ON wine.wine_id = wine_price.wine_id
INNER JOIN wine_points ON wine.wine_id = wine_points.wine_id
INNER JOIN wine_servings ON wine.wine_id = wine_servings.wine_id;