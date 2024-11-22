INSERT INTO "user" (first_name, last_name, email, password)
VALUES
('John', 'Doe', 'john_doe1@example.com', 'password123'),
('Mary', 'Smith', 'mary_smith2@example.com', 'password123'),
('Alice', 'Jones', 'alice_jones3@example.com', 'password123'),
('Bob', 'Brown', 'bob_brown4@example.com', 'password123'),
('Charlie', 'White', 'charlie_white5@example.com', 'password123'),
('David', 'Clark', 'david_clark6@example.com', 'password123'),
('Emma', 'Lee', 'emma_lee7@example.com', 'password123'),
('Frank', 'Hall', 'frank_hall8@example.com', 'password123'),
('Grace', 'Martin', 'grace_martin9@example.com', 'password123'),
('Hannah', 'Wilson', 'hannah_wilson10@example.com', 'password123'),
('Ian', 'Taylor', 'ian_taylor11@example.com', 'password123'),
('Jane', 'King', 'jane_king12@example.com', 'password123'),
('Kevin', 'Moore', 'kevin_moore13@example.com', 'password123'),
('Laura', 'Anderson', 'laura_anderson14@example.com', 'password123'),
('Michael', 'Thompson', 'michael_thompson15@example.com', 'password123'),
('Nancy', 'James', 'nancy_james16@example.com', 'password123'),
('Oliver', 'Baker', 'oliver_baker17@example.com', 'password123'),
('Peter', 'Harris', 'peter_harris18@example.com', 'password123'),
('Quincy', 'Evans', 'quincy_evans19@example.com', 'password123'),
('Rachel', 'Miller', 'rachel_miller20@example.com', 'password123'),
('Steve', 'Davis', 'steve_davis21@example.com', 'password123'),
('Tina', 'Garcia', 'tina_garcia22@example.com', 'password123'),
('Ursula', 'Rodriguez', 'ursula_rodriguez23@example.com', 'password123'),
('Vicky', 'Lee', 'vicky_lee24@example.com', 'password123'),
('William', 'Walker', 'william_walker25@example.com', 'password123'),
('Xena', 'Scott', 'xena_scott26@example.com', 'password123'),
('Yasmine', 'Adams', 'yasmine_adams27@example.com', 'password123'),
('Zachary', 'Hernandez', 'zachary_hernandez28@example.com', 'password123'),
('Aaron', 'Rodgers', 'aaron_rodgers29@example.com', 'password123'),
('Bella', 'Lynch', 'bella_lynch30@example.com', 'password123'),
('Chris', 'Martinez', 'chris_martinez31@example.com', 'password123'),
('Diana', 'Johnson', 'diana_johnson32@example.com', 'password123'),
('Ethan', 'Lee', 'ethan_lee33@example.com', 'password123'),
('Flora', 'Gonzalez', 'flora_gonzalez34@example.com', 'password123'),
('Gabriel', 'Clark', 'gabriel_clark35@example.com', 'password123'),
('Hugo', 'White', 'hugo_white36@example.com', 'password123'),
('Ivana', 'Moreno', 'ivana_moreno37@example.com', 'password123'),
('Jackson', 'Nash', 'jackson_nash38@example.com', 'password123'),
('Kylie', 'Robinson', 'kylie_robinson39@example.com', 'password123'),
('Luke', 'Turner', 'luke_turner40@example.com', 'password123'),
('Molly', 'Williams', 'molly_williams41@example.com', 'password123'),
('Nicholas', 'King', 'nicholas_king42@example.com', 'password123'),
('Olga', 'Evans', 'olga_evans43@example.com', 'password123'),
('Penny', 'Martin', 'penny_martin44@example.com', 'password123'),
('Quinn', 'Garcia', 'quinn_garcia45@example.com', 'password123'),
('Rosemary', 'Baker', 'rosemary_baker46@example.com', 'password123'),
('Samuel', 'Rodriquez', 'samuel_rodriquez47@example.com', 'password123'),
('Taylor', 'James', 'taylor_james48@example.com', 'password123'),
('Uma', 'Larson', 'uma_larson49@example.com', 'password123'),
('Victor', 'Williams', 'victor_williams50@example.com', 'password123');


INSERT INTO category (name)
VALUES
('IPA'),
('Stout'),
('Pale Ale'),
('Lager'),
('Wheat Beer'),
('Porter'),
('Saison'),
('Belgian Ale'),
('Sour'),
('Amber Ale');

INSERT INTO brewery (name, country)
VALUES
('Green Valley Brewing', 'USA'),
('Mountain Peak Brewery', 'USA'),
('Silver Fox Brewing', 'Canada'),
('Golden Eagle Brewing', 'UK'),
('Ironclad Brewery', 'USA'),
('Redwood Hills Brewing', 'Australia'),
('Blue Ridge Brewing', 'USA'),
('Misty River Brewing', 'Ireland'),
('Starlight Brewing Co.', 'Canada'),
('Evergreen Craft Brewery', 'Germany'),
('Copper Barrel Brewing', 'USA'),
('Rocky Mountain Brews', 'USA'),
('Maple Leaf Brewing', 'Canada'),
('Sunset Hills Brewery', 'New Zealand'),
('Highland Brew Co.', 'Scotland'),
('Brass Lion Brewery', 'USA'),
('Northern Lights Brewery', 'Norway'),
('Windswept Brewing', 'Denmark'),
('Firestone Craft Brewery', 'USA'),
('Brewmaster’s Forge', 'Belgium');


INSERT INTO beer (name, description, abv, id_brewery, id_category)
VALUES
('Hazy IPA', 'A juicy and hazy IPA with tropical fruit flavors and a smooth finish.', 6, 1, 1),
('Mountain Peak Pale Ale', 'A crisp and refreshing pale ale with a hint of piney bitterness.', 5, 2, 3),
('Fox’s Red Stout', 'A rich, dark stout with coffee and chocolate notes, perfect for colder evenings.', 7, 3, 2),
('Golden Eagle Pilsner', 'A light and crisp pilsner with a subtle hop bitterness and a clean finish.', 4, 4, 4),
('Ironclad Amber Ale', 'A balanced amber ale with malty sweetness and a touch of caramel.', 5, 5, 10),
('Redwood Hills Wheat', 'A smooth and creamy wheat beer with hints of banana and clove.', 5, 6, 5),
('Blue Ridge IPA', 'A bold IPA with a piney hop profile and a touch of citrus zest.', 6, 7, 1),
('Misty River Porter', 'A dark porter with roasted malt flavors and a hint of dark chocolate.', 6, 8, 2),
('Starlight Belgian Wit', 'A light and refreshing Belgian-style wheat beer with orange peel and coriander.', 4, 9, 5),
('Evergreen Lager', 'A clean and refreshing lager with a light malt body and crisp finish.', 4, 10, 4),
('Copper Barrel Amber', 'A malty amber ale with toasted bread and caramel flavors.', 5, 11, 10),
('Rocky Mountain IPA', 'A hoppy IPA with grapefruit and pine aromas, with a solid malt backbone.', 7, 12, 1),
('Maple Leaf Pale Ale', 'A well-balanced pale ale with earthy hop notes and a smooth malt finish.', 5, 13, 3),
('Sunset Hills Saison', 'A fruity and spicy saison with peppery flavors and a dry finish.', 6, 14, 7),
('Highland Scotch Ale', 'A rich, malty Scotch ale with caramel, toffee, and a light smokiness.', 7, 15, 2),
('Brass Lion IPA', 'An IPA with a bold hop character and a tropical fruit punch aroma.', 6, 16, 1),
('Northern Lights Wheat', 'A light and crisp wheat beer with citrus and floral notes.', 5, 17, 5),
('Windswept Amber Ale', 'A rich amber ale with malty sweetness and a hint of toasted nuts.', 5, 18, 10),
('Firestone Pale Ale', 'A pale ale with a citrusy aroma and a clean, dry finish.', 5, 19, 3),
('Brewmaster’s Belgian Ale', 'A strong Belgian ale with fruity esters and a smooth, sweet finish.', 8, 20, 8),
('Hazy Sunset IPA', 'A juicy IPA with tropical fruits and a soft bitterness on the finish.', 6, 1, 1),
('Pine Valley Stout', 'A full-bodied stout with strong coffee and roasted malt flavors.', 7, 2, 2),
('Golden Peak Wheat', 'A refreshing wheat beer with citrus and floral notes, perfect for a hot day.', 4, 3, 5),
('Frosted Fox Porter', 'A smooth porter with notes of cocoa and a hint of vanilla.', 6, 4, 2),
('Crystal Mountain IPA', 'A clear, crisp IPA with pine and citrus flavors and a bitter finish.', 6, 5, 1),
('Caramel Bliss Amber', 'A malty amber ale with caramel sweetness and a slight hoppy finish.', 5, 6, 10),
('Foggy River Saison', 'A farmhouse-style saison with fruity, spicy flavors and a dry finish.', 6, 7, 7),
('Steel Barrel IPA', 'A big, hoppy IPA with grapefruit, pine, and a hint of tropical fruits.', 7, 8, 1),
('Redwood Valley Pilsner', 'A crisp, clean pilsner with a mild bitterness and a refreshing finish.', 4, 9, 4),
('Brass Horn Stout', 'A smooth stout with roasted coffee, chocolate, and a hint of caramel.', 6, 10, 2),
('Copper Ridge Belgian Ale', 'A Belgian ale with fruity esters and a lightly sweet, malty finish.', 7, 11, 8),
('Silver Fox IPA', 'A balanced IPA with tropical fruit and pine notes, lightly bitter but very drinkable.', 6, 12, 1),
('Blue Ridge Pale Ale', 'A refreshing pale ale with light malt and a crisp hop bitterness.', 5, 13, 3),
('Firestone Porter', 'A dark porter with rich malt flavors, chocolate, and a roasted finish.', 6, 14, 2),
('Maple Hollow Lager', 'A smooth lager with mild malt sweetness and a clean, dry finish.', 4, 15, 4),
('Evergreen Saison', 'A fruity and floral saison with a lightly spicy finish.', 6, 16, 7),
('Copper Creek Amber', 'A full-bodied amber ale with caramel, toffee, and a slight bitterness.', 5, 17, 10),
('Northern Brew IPA', 'An IPA with bold citrus and pine aromas, perfect for hop lovers.', 7, 18, 1),
('Brass Mountain Pale Ale', 'A crisp pale ale with floral and citrus hop notes and a dry finish.', 5, 19, 3),
('Rocky Ridge Belgian Wit', 'A refreshing Belgian-style wheat beer with a hint of orange peel.', 4, 20, 5);

INSERT INTO ingredient (name, type)
VALUES
('Cascade Hops', 'Hops'),
('Citra Hops', 'Hops'),
('Mosaic Hops', 'Hops'),
('Pale Malt', 'Malt'),
('Caramel Malt', 'Malt'),
('Chocolate Malt', 'Malt'),
('Yeast (Saccharomyces cerevisiae)', 'Yeast'),
('Belgian Yeast', 'Yeast'),
('Corn Sugar', 'Adjunct'),
('Honey', 'Adjunct'),
('Orange Peel', 'Spice'),
('Coriander', 'Spice'),
('Lemon Zest', 'Spice'),
('Oak Chips', 'Flavoring'),
('Coffee', 'Flavoring');

INSERT INTO favorite (id_user, id_beer)
VALUES
(1, 1), -- User 1 likes Hazy IPA
(1, 3), -- User 1 also likes Fox’s Red Stout
(2, 5), -- User 2 likes Ironclad Amber Ale
(2, 7), -- User 2 also likes Blue Ridge IPA
(3, 9), -- User 3 likes Starlight Belgian Wit
(3, 12), -- User 3 also likes Rocky Mountain IPA
(4, 4), -- User 4 likes Golden Eagle Pilsner
(4, 6), -- User 4 also likes Redwood Hills Wheat
(5, 10), -- User 5 likes Evergreen Lager
(5, 15), -- User 5 also likes Brewmaster’s Belgian Ale
(6, 13), -- User 6 likes Maple Leaf Pale Ale
(6, 18), -- User 6 also likes Windswept Amber Ale
(7, 14), -- User 7 likes Sunset Hills Saison
(7, 21), -- User 7 also likes Hazy Sunset IPA
(8, 19), -- User 8 likes Firestone Pale Ale
(8, 22), -- User 8 also likes Pine Valley Stout
(9, 20), -- User 9 likes Brewmaster’s Belgian Ale
(9, 25), -- User 9 also likes Crystal Mountain IPA
(10, 23), -- User 10 likes Golden Peak Wheat
(10, 29), -- User 10 also likes Redwood Valley Pilsner
(11, 26), -- User 11 likes Caramel Bliss Amber
(11, 30), -- User 11 also likes Brass Horn Stout
(12, 11), -- User 12 likes Copper Barrel Amber
(12, 28), -- User 12 also likes Steel Barrel IPA
(13, 27), -- User 13 likes Foggy River Saison
(13, 31), -- User 13 also likes Copper Ridge Belgian Ale
(14, 24), -- User 14 likes Frosted Fox Porter
(14, 33), -- User 14 also likes Blue Ridge Pale Ale
(15, 34), -- User 15 likes Firestone Porter
(15, 38),
(2, 1); 

INSERT INTO favorite (id_user, id_beer)
VALUES
(1, 1), -- User 1 likes Hazy IPA
(1, 3), -- User 1 also likes Fox’s Red Stout
(2, 5), -- User 2 likes Ironclad Amber Ale
(2, 7), -- User 2 also likes Blue Ridge IPA
(3, 9), -- User 3 likes Starlight Belgian Wit
(3, 12), -- User 3 also likes Rocky Mountain IPA
(4, 4), -- User 4 likes Golden Eagle Pilsner
(4, 6), -- User 4 also likes Redwood Hills Wheat
(5, 10), -- User 5 likes Evergreen Lager
(5, 15), -- User 5 also likes Brewmaster’s Belgian Ale
(6, 13), -- User 6 likes Maple Leaf Pale Ale
(6, 18), -- User 6 also likes Windswept Amber Ale
(7, 14), -- User 7 likes Sunset Hills Saison
(7, 21), -- User 7 also likes Hazy Sunset IPA
(8, 19), -- User 8 likes Firestone Pale Ale
(8, 22), -- User 8 also likes Pine Valley Stout
(9, 20), -- User 9 likes Brewmaster’s Belgian Ale
(9, 25), -- User 9 also likes Crystal Mountain IPA
(10, 23), -- User 10 likes Golden Peak Wheat
(10, 29), -- User 10 also likes Redwood Valley Pilsner
(11, 26), -- User 11 likes Caramel Bliss Amber
(11, 30), -- User 11 also likes Brass Horn Stout
(12, 11), -- User 12 likes Copper Barrel Amber
(12, 28), -- User 12 also likes Steel Barrel IPA
(13, 27), -- User 13 likes Foggy River Saison
(13, 31), -- User 13 also likes Copper Ridge Belgian Ale
(14, 24), -- User 14 likes Frosted Fox Porter
(14, 33), -- User 14 also likes Blue Ridge Pale Ale
(15, 34), -- User 15 likes Firestone Porter
(15, 38); 

INSERT INTO review (rating, comment, id_beer, id_user)
VALUES
(5, 'Absolutely love this IPA! So juicy and refreshing with a perfect balance of bitterness.', 1, 1), -- Hazy IPA by User 1
(4, 'A solid pale ale. Crisp and easy to drink, but could use a bit more hop character.', 2, 2), -- Mountain Peak Pale Ale by User 2
(5, 'This stout is amazing! Rich coffee and chocolate flavors make it a perfect winter beer.', 3, 3), -- Fox’s Red Stout by User 3
(3, 'Good pilsner, but I feel like it lacks the depth of some of the other beers I’ve tried.', 4, 4), -- Golden Eagle Pilsner by User 4
(4, 'A great amber ale with a nice balance of malts and hops. The caramel notes are lovely.', 5, 5), -- Ironclad Amber Ale by User 5
(2, 'Too sweet for my taste. It’s a bit too much on the caramel side.', 6, 6), -- Redwood Hills Wheat by User 6
(5, 'Love this IPA! It has a bold hop profile but is still smooth and easy to drink.', 7, 7), -- Blue Ridge IPA by User 7
(4, 'The porter is rich and satisfying with a nice roasted malt finish. Very drinkable.', 8, 8), -- Misty River Porter by User 8
(3, 'The Belgian Wit is decent, but I expected more citrus and spice. It’s a bit too mild.', 9, 9), -- Starlight Belgian Wit by User 9
(5, 'Perfect lager! Crisp, clean, and refreshing. Exactly what I want in a pilsner.', 10, 10), -- Evergreen Lager by User 10
(4, 'Nice amber ale with a smooth mouthfeel and some nice caramel flavors.', 11, 11), -- Copper Barrel Amber by User 11
(3, 'Not a big fan of this IPA. Too bitter for my liking, though the citrus aroma is nice.', 12, 12), -- Rocky Mountain IPA by User 12
(5, 'Really like the flavor of this pale ale. Nice balance of malt and hops, very easy to drink.', 13, 13), -- Maple Leaf Pale Ale by User 13
(4, 'This saison has a nice fruity and spicy character, but it feels a bit too dry for my taste.', 14, 14), -- Sunset Hills Saison by User 14
(5, 'A fantastic Scotch ale. Caramel and toffee flavors are perfect for a cold evening.', 15, 15), -- Highland Scotch Ale by User 15
(4, 'Love the hoppiness of this IPA! It has a great tropical fruit profile with a crisp finish.', 16, 16), -- Brass Lion IPA by User 16
(2, 'Not a fan of wheat beers, but this one was alright. A bit too bready for my taste.', 17, 17), -- Northern Lights Wheat by User 17
(4, 'This amber ale is solid, with just the right balance of malts and hops. Definitely a good choice.', 18, 18), -- Windswept Amber Ale by User 18
(5, 'Great pale ale! Citrus and pine hops give it a nice kick. Definitely one of my favorites.', 19, 19), -- Firestone Pale Ale by User 19
(3, 'The Belgian ale is decent, but the sweetness doesn’t work for me. I’d prefer it to be drier.', 20, 20); 

INSERT INTO photo (url, id_beer) VALUES ('https://images.unsplash.com/photo-1618885472179-5e474019f2a9?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',1),('https://images.unsplash.com/photo-1618885472179-5e474019f2a9?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',2),('https://images.unsplash.com/photo-1618885472179-5e474019f2a9?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',3),('https://images.unsplash.com/photo-1499424474736-c040d0665d84?q=80&w=1854&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',3),('https://images.unsplash.com/photo-1499424474736-c040d0665d84?q=80&w=1854&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',4);