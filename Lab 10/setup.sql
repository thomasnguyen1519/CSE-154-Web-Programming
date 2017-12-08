CREATE DATABASE IF NOT EXISTS lab10;

use lab10;

DROP TABLE IF EXISTS Items;
CREATE TABLE Items (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(40),
  foodgroup VARCHAR(30),
  category VARCHAR(30)
);

INSERT INTO Items (name, foodgroup, category) VALUES ('Pickled Walnuts', 'proteins', 'nuts');
INSERT INTO Items (name, foodgroup, category) VALUES ('Peanuts', 'proteins', 'nuts');
INSERT INTO Items (name, foodgroup, category) VALUES ('Walnuts', 'proteins', 'nuts');
INSERT INTO Items (name, foodgroup, category) VALUES ('Almonds', 'proteins', 'nuts');
INSERT INTO Items (name, foodgroup, category) VALUES ('Trail Mix', 'proteins', 'nuts');

INSERT INTO Items (name, foodgroup, category) VALUES ('Anchovies', 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Anchovies", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Cod", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Eel", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Sea Urchin", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Shrimp", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Tuna", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Salt mackerel", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Scallops", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Rainbow Trout", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Brown Trout", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Bluefish", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Kippered Herring", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Crab", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Shrimp",'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Beluga Caviar", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Black Caviar", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Red Caviar", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Clams", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Little Neck clams", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Lobster", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Oysters", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Sardines", 'proteins', 'seafood');
INSERT INTO Items (name, foodgroup, category) VALUES ("Salmon" 'proteins', 'seafood');

INSERT INTO Items (name, foodgroup, category) VALUES ("Eggs" 'proteins', 'miscellaneous');
INSERT INTO Items (name, foodgroup, category) VALUES ("Pinto Beans",'proteins', 'miscellaneous');
INSERT INTO Items (name, foodgroup, category) VALUES ("Black-eyed Peas",'proteins', 'miscellaneous');
INSERT INTO Items (name, foodgroup, category) VALUES ("Lentils",'proteins', 'miscellaneous');
INSERT INTO Items (name, foodgroup, category) VALUES ("Edamame",'proteins', 'miscellaneous');
INSERT INTO Items (name, foodgroup, category) VALUES ("Plain Omelette",'proteins', 'miscellaneous');
INSERT INTO Items (name, foodgroup, category) VALUES ("Tofu",'proteins', 'miscellaneous');
INSERT INTO Items (name, foodgroup, category) VALUES ("Spanish omelette",'proteins', 'miscellaneous');
INSERT INTO Items (name, foodgroup, category) VALUES ("Escargot", 'proteins', 'miscellaneous');

INSERT INTO Items (name, foodgroup, category) VALUES ("Chicken", 'proteins', 'poultry');
INSERT INTO Items (name, foodgroup, category) VALUES ("English Pheasant", 'proteins', 'poultry');
INSERT INTO Items (name, foodgroup, category) VALUES ("Turkey", 'proteins', 'poultry');
INSERT INTO Items (name, foodgroup, category) VALUES ("Squab", 'proteins', 'poultry');

INSERT INTO Items (name, foodgroup, category) VALUES ("Beef", 'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Bacon",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Ham",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Corned Beef",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Beef",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Roast Beef",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Smoked Beef",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Sirloin Steak",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Lamb Chops",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Mince Pie",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Tenderloin Steak",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Lamb",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Pork Chops",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Virginia Ham",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Filet Mignon",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Porterhouse Steak",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Boiled Ham",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Beefsteak",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Ox Tongue",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Salami",'proteins', 'red meats');
INSERT INTO Items (name, foodgroup, category) VALUES ("Liver Sausage",'proteins', 'red meats');

INSERT INTO Items (name, foodgroup, category) VALUES ("Original Cheerios",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Frosted Flakes",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Honey Nut Cheerios",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Granola",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Oatmeal",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Froot Loops",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Original Special K",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Special K with Strawberries",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Kix",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Berry Kix",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Honeycombs",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Fruity Pebbles",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Cocoa Pebbles",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Grapenuts",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Capn Crunch",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Cocoa Puffs",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Corn Puffs",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Corn Flakes",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Shredded Wheat",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Multi-grain Cheerios",'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Wheaties"'grains', 'cereals');
INSERT INTO Items (name, foodgroup, category) VALUES ("Bagel",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Baguette",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Boule",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Brioche",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Casalinga",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Chapati",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Ciabatta",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Cornbread",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Crumpet",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Epi",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Ficelle",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Flatbread",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Focaccia",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Fruit bread",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Hamburger bun",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Hardtack",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Lavash",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Naan",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Pane d'olive",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Paratha",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Pita",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Potato bread",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Pretzel",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Pumpernickel",'grains', 'breads');
INSERT INTO Items (name, foodgroup, category) VALUES ("Roti"'grains', 'breads');

INSERT INTO Items (name, foodgroup, category) VALUES ("Cow Milk", "dairy", "milk");
INSERT INTO Items (name, foodgroup, category) VALUES ("Goat Milk","dairy", "milk");
INSERT INTO Items (name, foodgroup, category) VALUES ("Soy Milk","dairy", "milk");
INSERT INTO Items (name, foodgroup, category) VALUES ("Almond Milk","dairy", "milk");

INSERT INTO Items (name, foodgroup, category) VALUES ("Cheddar Cheese","dairy", "cheese");
INSERT INTO Items (name, foodgroup, category) VALUES ("Mozzarella Cheese","dairy", "cheese");
INSERT INTO Items (name, foodgroup, category) VALUES ("Swiss Cheese","dairy", "cheese");
INSERT INTO Items (name, foodgroup, category) VALUES ("Goat Cheese","dairy", "cheese");
INSERT INTO Items (name, foodgroup, category) VALUES ("Cottage Cheese","dairy", "cheese");
INSERT INTO Items (name, foodgroup, category) VALUES ("Sour Cream","dairy", "cheese");

INSERT INTO Items (name, foodgroup, category) VALUES ("Vanilla Yogurt","dairy", "yogurt");
INSERT INTO Items (name, foodgroup, category) VALUES ("Plain Yogurt","dairy", "yogurt");
INSERT INTO Items (name, foodgroup, category) VALUES ("Blueberry Yogurt","dairy", "yogurt");
INSERT INTO Items (name, foodgroup, category) VALUES ("Plain Greek Yogurt","dairy", "yogurt");
INSERT INTO Items (name, foodgroup, category) VALUES ("Vanilla Greek Yogurt","dairy", "yogurt");
INSERT INTO Items (name, foodgroup, category) VALUES ("Strawberry Yogurt", "dairy", "yogurt");
INSERT INTO Items (name, foodgroup, category) VALUES ("Strawberry Greek Yogurt","dairy", "yogurt");
INSERT INTO Items (name, foodgroup, category) VALUES ("Blueberry Greek Yogurt","dairy", "yogurt");

INSERT INTO Items (name, foodgroup, category) VALUES ("Apple", "fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Apricot","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Avocado","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Banana","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Bell pepper","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Bilberry","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Blackberry","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Blackcurrant","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Blood orange","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Blueberry","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Boysenberry","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Breadfruit","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Canary melon","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Cantaloupe","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Cherimoya","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Cherry","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Chili pepper","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Clementine","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Cloudberry","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Coconut","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Cranberry","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Currant","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Damson","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Date","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Dragonfruit","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Durian","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Eggplant","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Elderberry","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Feijoa","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Fig","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Goji berry","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Gooseberry","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Grape","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Grapefruit","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Guava","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Honeydew","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Huckleberry","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Jackfruit","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Jambul","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Jujube","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Kiwi fruit","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Kumquat","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Lemon","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Lime","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Loquat","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Lychee","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Mandarine","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Mango","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Mulberry","fruit", "fruit");
INSERT INTO Items (name, foodgroup, category) VALUES ("Nectarine","fruit", "fruit");

INSERT INTO Items (name, foodgroup, category) VALUES ("Acorn squash","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Alfalfa sprout","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Amaranth","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Anise","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Artichoke","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Arugula","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Asparagus","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Aubergine","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Azuki bean","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Banana squash","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Basil","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Bean sprout","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Beet","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Black bean","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Black-eyed pea","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Bok choy","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Borlotti bean","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Broad beans","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Broccoflower","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Broccoli","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Brussels sprout","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Butternut squash","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Cabbage","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Calabrese","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Caraway","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Carrot","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Cauliflower","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Cayenne pepper","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Celeriac","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Celery","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Chamomile","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Chard","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Chayote","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Chickpea","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Chives","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Cilantro","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Collard green","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Corn","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Corn salad","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Courgette","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Cucumber","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Daikon","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Delicata","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Dill","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Eggplant","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Endive","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Fennel","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Fiddlehead","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Frisee","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Garlic","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Gem squash","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Ginger","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Green bean","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Green pepper","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Habanero","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Herbs and spice","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Horseradish","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Hubbard squash","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Jalapeno","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Jerusalem artichoke","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Jicama","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Kale","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Kidney bean","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Kohlrabi","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Lavender","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Leek ","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Legume","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Lemon grass","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Lentils","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Lettuce","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Lima bean","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Mamey","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Mangetout","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Marjoram","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Mung bean","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Mushroom","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Mustard green","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Navy bean","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("New zealand spinach","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Nopale","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Okra","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Onion","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Oregano","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Paprika","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Parsley","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Parsnip","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Patty pan","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Pea","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Pinto bean","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Potato","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Pumpkin","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Radicchio","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Radish","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Rhubarb","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Rosemary","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Runner bean","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Rutabaga","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Sage","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Scallion","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Shallot","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Skirret","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Snap pea","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Soy bean","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Spaghetti squash","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Spinach","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Squash ","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Sweet potato","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Tabasco pepper","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Taro","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Tat soi","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Thyme","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Topinambur","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Tubers","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Turnip","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Wasabi","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Water chestnut","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Watercress","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("White radish","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Yam","vegetables", "vegetables");
INSERT INTO Items (name, foodgroup, category) VALUES ("Zucchini""vegetables", "vegetables");

INSERT INTO Items (name, foodgroup, category) VALUES("Baklava","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Bomboloni","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Canelé","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Cinnamon roll","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Croissant","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Cronut","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Doughnut","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Éclair","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Gulab jamun","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Kouign-amann","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Mille-feuille","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Morning bun","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Pain au chocolat","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Toaster strudel","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Pastel de nata","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Waffles","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Pancakes","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Profiterole","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Rugelach","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Shortcake","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Stollen","desserts", "pastries");
INSERT INTO Items (name, foodgroup, category) VALUES("Chocolate Chip Cookie","desserts", "baked desserts");
INSERT INTO Items (name, foodgroup, category) VALUES("Snickerdoodle","desserts", "baked desserts");
INSERT INTO Items (name, foodgroup, category) VALUES("Oatmeal Cookie","desserts", "baked desserts");
INSERT INTO Items (name, foodgroup, category) VALUES("Brownie","desserts", "baked desserts");
INSERT INTO Items (name, foodgroup, category) VALUES("Ice Cream", "desserts", "frozen desserts");
INSERT INTO Items (name, foodgroup, category) VALUES("Sherbet","desserts", "frozen desserts");
INSERT INTO Items (name, foodgroup, category) VALUES("Sorbet","desserts", "frozen desserts");
INSERT INTO Items (name, foodgroup, category) VALUES("Milkshake","desserts", "frozen desserts");