INSERT INTO user_account (name, password, display_name, email, status, role, create_datetime, update_datetime)
VALUES
  ('john_doe', '$2a$10$X5eEvupGrg2EWcKh7yeetOcPPYe3z6c3kQlFvgzpRVaTXEdmLAkoK', 'John Doe', 'john.doe@example.com', 1, 1, NOW(), NOW()),
  ('jane_smith', '$2a$10$X5eEvupGrg2EWcKh7yeetOcPPYe3z6c3kQlFvgzpRVaTXEdmLAkoK', 'Jane Smith', 'jane.smith@example.com', 1, 2, NOW(), NOW()),
  ('bob_lee', '$2a$10$X5eEvupGrg2EWcKh7yeetOcPPYe3z6c3kQlFvgzpRVaTXEdmLAkoK', 'Bob Lee', 'bob.lee@example.com', 1, 1, NOW(), NOW()),
  ('alice_wonder', '$2a$10$X5eEvupGrg2EWcKh7yeetOcPPYe3z6c3kQlFvgzpRVaTXEdmLAkoK', 'Alice Wonder', 'alice.wonder@example.com', 1, 2, NOW(), NOW());

INSERT INTO user_ingredients (user_id, name, quantity, uom, expiry_date, create_datetime, update_datetime)
VALUES
  (1, 'Flour', 2.5, 'kg', '2024-12-01', NOW(), NOW()),
  (1, 'Sugar', 1.0, 'kg', '2024-11-15', NOW(), NOW()),
  (2, 'Chicken Breast', 1.2, 'kg', '2024-10-25', NOW(), NOW()),
  (2, 'Curry Powder', 0.1, 'kg', '2024-12-10', NOW(), NOW()),
  (3, 'Beef', 0.8, 'kg', '2024-11-30', NOW(), NOW()),
  (3, 'Tortilla', 0.5, 'kg', '2024-11-20', NOW(), NOW()),
  (4, 'Mozzarella Cheese', 0.4, 'kg', '2024-12-05', NOW(), NOW()),
  (4, 'Bell Peppers', 1.0, 'kg', '2024-10-30', NOW(), NOW());

INSERT INTO notification (user_id, title, content, type, is_read, create_datetime) 
VALUES 
  (1, 'Expiration Notice', 'Your Sugar will expire in 3 days. Please use it soon.', 'INFO', false, NOW()),
  (1, 'Expiration Alert', 'Your Flour will expire in 1 day! Please use it immediately.', 'INFO', false, NOW()),
  (2, 'Expiration Notice', 'Your Chicken Breast will expire in 3 days. Please consume soon.', 'INFO', false, NOW()),
  (2, 'Expiration Alert', 'Your Curry Powder will expire in 1 day! Please use it immediately.', 'INFO', false, NOW()),
  (3, 'Expiration Notice', 'Your Beef will expire in 3 days. Please cook soon.', 'INFO', false, NOW()),
  (3, 'Expiration Alert', 'Your Tortilla will expire in 1 day! Please consume immediately.', 'INFO', false, NOW()),
  (4, 'Expiration Notice', 'Your Mozzarella Cheese will expire in 3 days. Please use it soon.', 'INFO', false, NOW()),
  (4, 'Expiration Alert', 'Your Bell Peppers will expire in 1 day! Please consume immediately.', 'INFO', false, NOW());

-- Insert all recipe records  
INSERT INTO recipe (creator_id, name, image, description, cookingTimeInSec, difficultyLevel, rating, status, cuisine, create_datetime, update_datetime)   
VALUES  
    (1, 'Kung Pao Chicken', 'https://raw.githubusercontent.com/ZeldaMao/example-pics-final-proj/refs/heads/main/gongbaojiding.jpg', 'Classic Sichuan dish, spicy and flavorful.', 1800, 2, 4.7, 1, 'Chinese', NOW(), NOW()),  
    (1, 'Tomato and Egg Stir-fry', 'https://raw.githubusercontent.com/ZeldaMao/example-pics-final-proj/refs/heads/main/fanqiechaodan.jpg', 'Homestyle delicacy, simple and easy to make.', 900, 1, 4.5, 1, 'Chinese', NOW(), NOW()),  
    (1, 'Red Braised Pork', 'https://raw.githubusercontent.com/ZeldaMao/example-pics-final-proj/refs/heads/main/hongshaorou.jpg', 'Glossy red color, rich but not greasy.', 7200, 3, 4.8, 1, 'Chinese', NOW(), NOW()),  
    (1, 'Mapo Tofu', 'https://raw.githubusercontent.com/ZeldaMao/example-pics-final-proj/refs/heads/main/mapodoufu.jpg', 'Spicy and aromatic, with silky soft tofu.', 1500, 2, 4.6, 1, 'Chinese', NOW(), NOW()),  
    (105, 'Fish-flavored Eggplant', 'https://raw.githubusercontent.com/ZeldaMao/example-pics-final-proj/refs/heads/main/yuxiangqiezi.jpg', 'Sweet and sour, with tender eggplant.', 1200, 2, 4.5, 1, 'Chinese', NOW(), NOW()),  
    (106, 'Steamed Sea Bass', 'https://raw.githubusercontent.com/ZeldaMao/example-pics-final-proj/refs/heads/main/qingzhengluyu.jpg', 'Preserves the fish''s natural flavor, healthy and delicious.', 2400, 2, 4.9, 1, 'Chinese', NOW(), NOW()),  
    (107, 'Hot and Sour Soup', 'https://raw.githubusercontent.com/ZeldaMao/example-pics-final-proj/refs/heads/main/suanlaitan.jpg', 'Tangy and spicy, rich in nutrients.', 1800, 2, 4.4, 1, 'Chinese', NOW(), NOW()),  
    (108, 'Garlic Broccoli', 'https://raw.githubusercontent.com/ZeldaMao/example-pics-final-proj/refs/heads/main/suanrongxilanhua.jpg', 'Light and refreshing, rich in vitamins.', 900, 1, 4.3, 1, 'Chinese', NOW(), NOW()),  
    (109, 'Stir-fried Mushrooms with Pork Slices', 'https://raw.githubusercontent.com/ZeldaMao/example-pics-final-proj/refs/heads/main/moguchao_roupian.jpg', 'Savory and juicy, nutritionally balanced.', 1500, 2, 4.6, 1, 'Chinese', NOW(), NOW()),  
    (110, 'Sweet and Sour Spare Ribs', 'https://raw.githubusercontent.com/ZeldaMao/example-pics-final-proj/refs/heads/main/tangcuxiaogu.jpg', 'Sweet and tangy, crispy outside and tender inside.', 3600, 3, 4.7, 1, 'Chinese', NOW(), NOW()),  
    (111, 'Spaghetti Carbonara', 'https://raw.githubusercontent.com/ZeldaMao/example-pics-final-proj/refs/heads/main/carbonara.jpg', 'Classic Italian pasta dish', 1200, 2, 4.5, 1, 'Italian', NOW(), NOW()),  
    (112, 'Chicken Tikka Masala', 'https://raw.githubusercontent.com/ZeldaMao/example-pics-final-proj/refs/heads/main/tikka_masala.jpg', 'Spicy and flavorful chicken curry', 1800, 3, 4.8, 1, 'Indian', NOW(), NOW()),  
    (113, 'Beef Tacos', 'https://raw.githubusercontent.com/ZeldaMao/example-pics-final-proj/refs/heads/main/tacos.jpg', 'Mexican beef tacos with fresh salsa', 900, 2, 4.7, 1, 'Mexican', NOW(), NOW()),  
    (114, 'Vegetarian Pizza', 'https://raw.githubusercontent.com/ZeldaMao/example-pics-final-proj/refs/heads/main/veggie_pizza.jpg', 'Pizza topped with fresh vegetables', 1500, 2, 4.4, 1, 'Italian', NOW(), NOW());

-- Insert all recipe_ingredients records 
INSERT INTO recipe_ingredients (recipe_id, name, quantity, uom) VALUES  
    -- Kung Pao Chicken (id=1)  
    (1, 'chicken breast', 500.0, 'g'),  
    (1, 'peanuts', 100.0, 'g'),  
    (1, 'dried chili peppers', 50.0, 'g'),  
    
    -- Tomato and Egg Stir-fry (id=2)  
    (2, 'tomatoes', 3.0, 'piece'),  
    (2, 'eggs', 4.0, 'piece'),  
    (2, 'salt', 5.0, 'g'),  
    
    -- Red Braised Pork (id=3)  
    (3, 'pork belly', 1000.0, 'g'),  
    (3, 'soy sauce', 50.0, 'ml'),  
    (3, 'rock sugar', 100.0, 'g'),  
    
    -- Mapo Tofu (id=4)  
    (4, 'tofu', 400.0, 'g'),  
    (4, 'ground beef', 150.0, 'g'),  
    (4, 'doubanjiang (spicy bean paste)', 2.0, 'tbsp'),  
    
    -- Fish-flavored Eggplant (id=5)  
    (5, 'eggplant', 500.0, 'g'),  
    (5, 'minced garlic', 20.0, 'g'),  
    (5, 'minced ginger', 15.0, 'g'),  
    
    -- Steamed Sea Bass (id=6)  
    (6, 'sea bass', 800.0, 'g'),  
    (6, 'ginger slices', 30.0, 'g'),  
    (6, 'scallion segments', 20.0, 'g'),  
    
    -- Hot and Sour Soup (id=7)  
    (7, 'tofu', 200.0, 'g'),  
    (7, 'wood ear mushrooms', 50.0, 'g'),  
    (7, 'carrot', 1.0, 'piece'),  
    
    -- Garlic Broccoli (id=8)  
    (8, 'broccoli', 300.0, 'g'),  
    (8, 'minced garlic', 20.0, 'g'),  
    (8, 'salt', 5.0, 'g'),  
    
    -- Stir-fried Mushrooms with Pork Slices (id=9)  
    (9, 'pork tenderloin', 400.0, 'g'),  
    (9, 'shiitake mushrooms', 200.0, 'g'),  
    (9, 'green bell peppers', 2.0, 'piece'),  
    
    -- Sweet and Sour Spare Ribs (id=10)  
    (10, 'spare ribs', 800.0, 'g'),  
    (10, 'white vinegar', 100.0, 'ml'),  
    (10, 'sugar', 150.0, 'g'),  

    -- Spaghetti Carbonara (id=11)  
    (11, 'spaghetti', 400.0, 'g'),  
    (11, 'pancetta', 150.0, 'g'),  
    (11, 'eggs', 3.0, 'piece'),  
    (11, 'parmesan cheese', 100.0, 'g'),  

    -- Chicken Tikka Masala (id=12)  
    (12, 'chicken breast', 700.0, 'g'),  
    (12, 'yogurt', 200.0, 'ml'),  
    (12, 'tomato sauce', 400.0, 'ml'),  
    (12, 'garam masala', 2.0, 'tbsp'),  

    -- Beef Tacos (id=13)  
    (13, 'ground beef', 500.0, 'g'),  
    (13, 'taco shells', 8.0, 'piece'),  
    (13, 'lettuce', 200.0, 'g'),  
    (13, 'cheddar cheese', 100.0, 'g'),  

    -- Vegetarian Pizza (id=14)  
    (14, 'pizza dough', 1.0, 'piece'),  
    (14, 'tomato sauce', 150.0, 'ml'),  
    (14, 'mozzarella cheese', 200.0, 'g'),  
    (14, 'bell peppers', 2.0, 'piece'),  
    (14, 'mushrooms', 100.0, 'g');  

-- Insert all recipe_cooking_step records  
INSERT INTO recipe_cooking_step (recipe_id, description, image) VALUES  
    -- Kung Pao Chicken (id=1)  
    (1, 'Cut chicken breast into cubes, marinate with soy sauce and starch.', 'step1.jpg'),  
    (1, 'Heat oil in a wok, add dried chili peppers and stir-fry until fragrant.', 'step2.jpg'),  
    (1, 'Add chicken cubes and stir-fry until cooked, then add peanuts at the end.', 'step3.jpg'),  

    -- Tomato and Egg Stir-fry (id=2)  
    (2, 'Cut tomatoes into chunks, beat the eggs.', 'step4.jpg'),  
    (2, 'Heat oil in a wok, scramble the eggs until set, then set aside.', 'step5.jpg'),  
    (2, 'Add a little oil, stir-fry tomatoes, season with salt, then add back the eggs and mix well.', 'step6.jpg'),  

    -- Red Braised Pork (id=3)  
    (3, 'Cut pork belly into cubes, blanch in boiling water to remove impurities.', 'step7.jpg'),  
    (3, 'Add a little oil to the wok, then add rock sugar and caramelize it.', 'step8.jpg'),  
    (3, 'Add pork and stir-fry until colored, then add soy sauce, cooking wine, and water. Simmer until the meat is tender.', 'step9.jpg'),  

    -- Mapo Tofu (id=4)  
    (4, 'Cut tofu into cubes and blanch in hot water.', 'step10.jpg'),  
    (4, 'Heat oil in a wok, stir-fry ground beef until browned.', 'step11.jpg'),  
    (4, 'Add doubanjiang and stir-fry, then add tofu and water. Simmer on low heat, thicken the sauce before serving.', 'step12.jpg'),  

    -- Fish-flavored Eggplant (id=5)  
    (5, 'Cut eggplant into strips, soak in salt water.', 'step13.jpg'),  
    (5, 'Heat oil and fry eggplant until golden, then drain excess oil.', 'step14.jpg'),  
    (5, 'Leave a little oil in the wok, stir-fry minced garlic and ginger, add seasonings and eggplant, mix well before serving.', 'step15.jpg'),  

    -- Steamed Sea Bass (id=6)  
    (6, 'Clean the sea bass, make a few cuts on both sides, stuff with ginger slices and scallion segments.', 'step16.jpg'),  
    (6, 'Once the steamer is boiling, place the fish in and steam on high heat for about 15 minutes.', 'step17.jpg'),  
    (6, 'Remove the fish, drizzle with hot oil and soy sauce, garnish with fresh cilantro.', 'step18.jpg'),  

    -- Hot and Sour Soup (id=7)  
    (7, 'Cut tofu into strips, soak wood ear mushrooms, julienne the carrot.', 'step19.jpg'),  
    (7, 'Heat oil in a pot, stir-fry minced green onions, ginger, and garlic, add all ingredients and stock.', 'step20.jpg'),  
    (7, 'Add seasonings, thicken the soup, and sprinkle with chopped green onions before serving.', 'step21.jpg'),  

    -- Garlic Broccoli (id=8)  
    (8, 'Cut broccoli into florets, blanch in boiling water.', 'step22.jpg'),  
    (8, 'Heat oil in a wok, stir-fry minced garlic until fragrant.', 'step23.jpg'),  
    (8, 'Add broccoli and stir-fry, season with salt, and serve immediately.', 'step24.jpg'),  

    -- Stir-fried Mushrooms with Pork Slices (id=9)  
    (9, 'Slice pork tenderloin, marinate with soy sauce and starch.', 'step25.jpg'),  
    (9, 'Remove stems from shiitake mushrooms and slice, cut green bell peppers into strips.', 'step26.jpg'),  
    (9, 'Heat oil in a wok, stir-fry pork until color changes, add mushrooms and bell peppers, season and serve.', 'step27.jpg'),  

    -- Sweet and Sour Spare Ribs (id=10)  
    (10, 'Clean spare ribs and blanch in boiling water to remove impurities.', 'step28.jpg'),  
    (10, 'Heat oil in a wok, fry spare ribs until golden brown.', 'step29.jpg'),  
    (10, 'Add white vinegar, sugar, and some water, simmer on low heat until sauce thickens and meat is tender.', 'step30.jpg'),  

    -- Spaghetti Carbonara (id=11)  
    (11, 'Cook spaghetti in boiling salted water until al dente.', 'step31.jpg'),  
    (11, 'In a separate pan, cook diced pancetta until crispy.', 'step32.jpg'),  
    (11, 'Mix eggs, grated parmesan, and black pepper. Toss with hot pasta and pancetta.', 'step33.jpg'),  

    -- Chicken Tikka Masala (id=12)  
    (12, 'Marinate chicken in yogurt and spices, then grill or bake until charred.', 'step34.jpg'),  
    (12, 'In a pan, make a sauce with tomatoes, cream, and spices.', 'step35.jpg'),  
    (12, 'Add the cooked chicken to the sauce and simmer until heated through.', 'step36.jpg'),  

    -- Beef Tacos (id=13)  
    (13, 'Brown ground beef in a pan with taco seasoning.', 'step37.jpg'),  
    (13, 'Warm the taco shells in the oven.', 'step38.jpg'),  
    (13, 'Assemble tacos with beef, lettuce, cheese, and desired toppings.', 'step39.jpg'),  

    -- Vegetarian Pizza (id=14)  
    (14, 'Roll out pizza dough and spread with tomato sauce.', 'step40.jpg'),  
    (14, 'Top with mozzarella cheese, sliced bell peppers, and mushrooms.', 'step41.jpg'),  
    (14, 'Bake in a preheated oven until crust is golden and cheese is bubbly.', 'step42.jpg');

-- Insert all recipe_review records  
INSERT INTO recipe_review (recipe_id, creator_id, rating, create_datetime, update_datetime, comments) VALUES
    -- Kung Pao Chicken (id=1)  
    (1, 1, 4.5, NOW(), NOW(), 'Delicious! Perfect balance of spicy and savory.'),  
    (1, 2, 3.5, NOW(), NOW(), 'Good flavor, but a bit too spicy for my taste.'),  
    (1, 3, 5.0, NOW(), NOW(), 'Authentic taste! Reminds me of the Kung Pao I had in Sichuan.'),  

    -- Tomato and Egg Stir-fry (id=2)  
    (2, 4, 5.0, NOW(), NOW(), 'Simple yet so delicious! My new go-to comfort food.'),  
    (2, 5, 4.0, NOW(), NOW(), 'Nutritious and tasty. I added some spinach for extra greens.'),  
    (2, 1, 3.5, NOW(), NOW(), 'Good flavor but needed to reduce salt for my diet.'),  

    -- Red Braised Pork (id=3)  
    (3, 6, 5.0, NOW(), NOW(), 'Melt-in-your-mouth tender! A new favorite.'),  
    (3, 7, 3.0, NOW(), NOW(), 'Tasty but too sweet. Had to adjust the sugar.'),  
    (3, 8, 4.5, NOW(), NOW(), 'The depth of flavor is incredible. Will make again!'),  

    -- Mapo Tofu (id=4)  
    (4, 9, 5.0, NOW(), NOW(), 'Best Mapo Tofu recipe I have tried! Authentic taste.'),  
    (4, 2, 3.5, NOW(), NOW(), 'Good flavor but too spicy. Had to tone it down.'),  
    (4, 10, 4.0, NOW(), NOW(), 'Great recipe! I used plant-based meat and it was delicious.'),  

    -- Fish-flavored Eggplant (id=5)  
    (5, 3, 4.5, NOW(), NOW(), 'Never knew eggplant could taste this good!'),  
    (5, 4, 3.0, NOW(), NOW(), 'Tasty but too oily. Had to drain some oil.'),  
    (5, 5, 5.0, NOW(), NOW(), 'The garlic flavor is perfect. Could not get enough!'),  

    -- Steamed Sea Bass (id=6)  
    (6, 6, 5.0, NOW(), NOW(), 'So fresh and delicate. Restaurant quality at home!'),  
    (6, 7, 3.5, NOW(), NOW(), 'Taste was good but fish was slightly overcooked.'),  
    (6, 8, 4.0, NOW(), NOW(), 'Delicious! I reduced soy sauce and it was still great.'),  

    -- Hot and Sour Soup (id=7)  
    (7, 9, 5.0, NOW(), NOW(), 'Perfect balance of hot and sour. So comforting!'),  
    (7, 10, 3.5, NOW(), NOW(), 'A bit too sour for me, but overall good flavor.'),  
    (7, 1, 4.0, NOW(), NOW(), 'Loved the wood ear mushrooms. Added extra!'),  

    -- Garlic Broccoli (id=8)  
    (8, 2, 4.5, NOW(), NOW(), 'Simple and delicious. Broccoli stayed crisp!'),  
    (8, 3, 3.5, NOW(), NOW(), 'Tasty but very garlicky. Not for date night!'),  
    (8, 4, 5.0, NOW(), NOW(), 'So fast and easy to make. New weeknight staple!'),  

    -- Stir-fried Mushrooms with Pork Slices (id=9)  
    (9, 5, 5.0, NOW(), NOW(), 'Heaven for mushroom lovers! So flavorful.'),  
    (9, 6, 4.0, NOW(), NOW(), 'Delicious, but could use a bit more pork.'),  
    (9, 7, 3.5, NOW(), NOW(), 'Good flavor but a bit dry. Needed more sauce.'),  

    -- Sweet and Sour Spare Ribs (id=10)  
    (10, 8, 4.5, NOW(), NOW(), 'Finger-licking good! Perfect balance of sweet and sour.'),  
    (10, 9, 3.0, NOW(), NOW(), 'Tasty but too sweet for my diet.'),  
    (10, 10, 5.0, NOW(), NOW(), 'Love the tanginess! Brings back childhood memories.'),  

    -- Spaghetti Carbonara (id=11)  
    (11, 1, 5.0, NOW(), NOW(), 'Creamy and delicious! Just like in Rome.'),  
    (11, 2, 4.0, NOW(), NOW(), 'Great flavor, could use more pancetta though.'),  
    (11, 3, 3.5, NOW(), NOW(), 'Good, but I prefer it with some garlic added.'),  

    -- Chicken Tikka Masala (id=12)  
    (12, 4, 5.0, NOW(), NOW(), 'Burst of flavors! Reminds me of my favorite Indian restaurant.'),  
    (12, 5, 3.5, NOW(), NOW(), 'Tasty but too spicy for me. Had to add yogurt to cool it down.'),  
    (12, 6, 4.0, NOW(), NOW(), 'Delicious! Wish the chicken had more of that tandoori char flavor.'),  

    -- Beef Tacos (id=13)  
    (13, 7, 4.5, NOW(), NOW(), 'Perfect for taco night! The whole family loved it.'),  
    (13, 8, 3.5, NOW(), NOW(), 'Good flavor but too spicy. Had to add extra sour cream.'),  
    (13, 9, 5.0, NOW(), NOW(), 'Love how fresh and vibrant all the toppings are!'),  

    -- Vegetarian Pizza (id=14)  
    (14, 10, 4.5, NOW(), NOW(), 'Who needs meat? This veggie pizza is amazing!'),  
    (14, 1, 3.5, NOW(), NOW(), 'Toppings were good, but the crust was a bit soggy.'),  
    (14, 2, 4.0, NOW(), NOW(), 'Added some red pepper flakes. Perfect kick!');


-- for table user_account  -- 

DO $$
BEGIN
    FOR i IN 1..30 LOOP
        INSERT INTO user_account (id, name, password, display_name, email, status, role, create_datetime, update_datetime)
        VALUES 
        (	
        	i,
            'user_' || i, 
            'password_' || i, 
            'Display Name ' || i, 
            'user' || i || '@example.com', 
            i % 2 + 1, 
            CASE WHEN i % 4 = 0 THEN 0 ELSE 1 END, 
            NOW(), 
            NOW()
        )
        ON CONFLICT (id) 
        DO UPDATE SET 
            name = EXCLUDED.name,
            password = EXCLUDED.password,
            display_name = EXCLUDED.display_name,
            status = EXCLUDED.status,
            role = EXCLUDED.role,
            update_datetime = NOW();
    END LOOP;
END $$;


-- for table user_ingredients  -- 

DO $$
BEGIN
    FOR i IN 1..50 LOOP
        INSERT INTO user_ingredients (id, user_id, name, quantity, uom, expiry_date, create_datetime, update_datetime)
        VALUES 
        (
        	i,
            (i % 10) + 1,  -- user_id between 1 and 10
            'Ingredient_' || (i % 11), 
            (i * 10) % 100 + 10,  -- quantity between 10 and 100
            CASE WHEN i % 2 = 0 THEN 'kg' ELSE 'g' END, 
            NOW() + INTERVAL '1 month' * (i % 12), 
            NOW(), 
            NOW()
        )
        ON CONFLICT (id) 
        DO UPDATE SET 
            quantity = EXCLUDED.quantity,
            uom = EXCLUDED.uom,
            expiry_date = EXCLUDED.expiry_date,
            update_datetime = NOW();
    END LOOP;
END $$;

 
-- for table recipe -- 
DO $$
BEGIN
    FOR i IN 1..30 LOOP
        INSERT INTO recipe (id, creator_id, name, image, description, cookingTimeInSec, difficultyLevel, rating, status, create_datetime, update_datetime)
        VALUES 
        (   	
        	i,
            (i % 10) + 1,  -- creator_id between 1 and 10
            'Recipe_' || i, 
            '/images/recipe_' || i || '.jpg', 
            'This is a description for Recipe_' || i, 
            (i * 10) % 3600 + 600,  -- cooking time between 600 and 3600 seconds
            i % 3 + 1, 
            (i % 5) + 1.0,  -- rating between 1.0 and 5.0
            i % 3, 
            NOW(), 
            NOW()
        )
        ON CONFLICT (id) 
        DO UPDATE SET 
            image = EXCLUDED.image,
            description = EXCLUDED.description,
            cookingTimeInSec = EXCLUDED.cookingTimeInSec,
            difficultyLevel = EXCLUDED.difficultyLevel,
            rating = EXCLUDED.rating,
            update_datetime = NOW();
    END LOOP;
END $$;