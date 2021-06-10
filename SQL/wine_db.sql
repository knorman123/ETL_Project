CREATE TABLE "wine_price" (
    "variety" VARCHAR(100)   NOT NULL,
    "price" INT   NOT NULL,
    "wine_id" INT   NOT NULL
);
CREATE TABLE "wine" (
    "wine_id" INT   NOT NULL,
    "country" VARCHAR(100)   NOT NULL,
    "title" VARCHAR(250)   NOT NULL,
    "variety" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_wine" PRIMARY KEY (
        "wine_id"
     )
);
CREATE TABLE "merge_countries" (
    "country" VARCHAR(100)   NOT NULL,
    "variety" VARCHAR(100)   NOT NULL,
    "points" INT   NOT NULL,
    "price" INT   NOT NULL,
    "title" INT   NOT NULL,
    "wine_servings" INT   NOT NULL,
    "wine_id" INT   NOT NULL
);
CREATE TABLE "wine_points" (
    "points" INT   NOT NULL,
    "variety" VARCHAR(100)   NOT NULL,
    "wine_id" INT   NOT NULL
);
CREATE TABLE "wine_servings" (
    "wine_id" INT   NOT NULL,
    "wine_servings" INT   NOT NULL,
    "country" VARCHAR(100)   NOT NULL
);
ALTER TABLE "wine_price" ADD CONSTRAINT "fk_wine_price_wine_id" FOREIGN KEY("wine_id")
REFERENCES "wine" ("wine_id");
ALTER TABLE "merge_countries" ADD CONSTRAINT "fk_merge_countries_wine_id" FOREIGN KEY("wine_id")
REFERENCES "wine" ("wine_id");
ALTER TABLE "wine_points" ADD CONSTRAINT "fk_wine_points_wine_id" FOREIGN KEY("wine_id")
REFERENCES "wine" ("wine_id");
ALTER TABLE "wine_servings" ADD CONSTRAINT "fk_wine_servings_wine_id" FOREIGN KEY("wine_id")
REFERENCES "wine" ("wine_id");
