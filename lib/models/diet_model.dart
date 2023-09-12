class DietModel {
  String name;
  String iconPath;
  String duration;
  String level;
  String calorie;
  String description;
  bool viewIsSelected;

  DietModel(
      {required this.name,
      required this.iconPath,
      required this.duration,
      required this.calorie,
      required this.level,
      required this.viewIsSelected,
      required this.description});

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(DietModel(
        name: 'Honey Pancake',
        iconPath: 'assets/icons/pancakes.svg',
        duration: '30mins',
        calorie: '190',
        level: "Easy",
        viewIsSelected: true,
        description:
            '''Honey pancakes are a delightful and versatile addition to various diets, offering a perfect blend of flavor and nutrition. 
          These delectable treats can be enjoyed by people following a variety of dietary plans, such as vegetarian, vegan, or even gluten-free diets When incorporated into a balanced diet, honey pancakes provide a source of carbohydrates, thanks to the flour or flour substitute used in the batter. 
          Carbohydrates are essential for providing energy to the body, making honey pancakes an excellent choice for those with active lifestyles. 
          One of the key attractions of honey pancakes is the inclusion of honey as a sweetener. 
          Honey not only adds natural sweetness but also offers numerous health benefits. 
          It contains antioxidants and has antibacterial properties, which can support overall well-being. 
          Additionally, honey has a lower glycemic index compared to refined sugar, making it a preferred option for individuals concerned about blood sugar levels.'''));

    diets.add(DietModel(
        name: 'Chae Paratha',
        iconPath: 'assets/icons/tea.svg',
        duration: '20mins',
        calorie: '290',
        level: "Super Easy",
        viewIsSelected: true,
        description:
            '''A Chae Paratha breakfast is a delightful morning indulgence from the Indian subcontinent. 
        It features golden-brown, flaky parathas cooked in ghee or oil, served alongside a steaming cup of spiced chai. 
        This satisfying meal is often accompanied by pickles, yogurt, chutneys, or vegetable curry, creating a symphony of flavors that's both comforting and rich. 
        Whether you're tearing apart layers of paratha or sipping on aromatic tea, Chae Paratha breakfasts offer a flavorful and heartwarming start to the day, deeply cherished in many Indian households.'''));

    diets.add(DietModel(
        name: 'Pizza',
        iconPath: 'assets/icons/pizza.svg',
        duration: '30mins',
        calorie: '300',
        level: "moderate",
        viewIsSelected: true,
        description:
            '''Pizza, an iconic dish beloved worldwide, is a culinary masterpiece that transcends cultural boundaries. 
        Originating from Italy, this delectable creation has evolved into a diverse and endlessly customizable delight. 
        At its core, pizza consists of a thin or thick crust, typically made from wheat dough, adorned with a tomato-based sauce and topped with an array of ingredients, including mozzarella cheese and a variety of meats, vegetables, herbs, and spices. 
        The beauty of pizza lies in its versatility, with options ranging from the classic Margherita, showcasing simplicity and elegance, to extravagant gourmet creations featuring exotic ingredients. 
        Baked to perfection in a blazing hot oven, pizza emerges with a harmonious blend of textures and flavors: the crispiness of the crust, the creaminess of the cheese, and the freshness of the toppings. 
        Whether enjoyed in a pizzeria, at a family gathering, or as a quick takeout meal, pizza has become a universal comfort food, uniting people through the joy of its irresistible taste and communal sharing. 
        It's a culinary icon that continues to inspire, innovate, and bring people together around a slice of pure deliciousness.'''));

    diets.add(DietModel(
        name: 'Omelette',
        iconPath: 'assets/icons/omlette.svg',
        duration: '20mins',
        calorie: '150',
        level: "Easy",
        viewIsSelected: true,
        description:
            '''An omelette is a classic and versatile dish that has found its way into breakfast tables and menus around the world. 
        This simple yet satisfying creation starts with beaten eggs seasoned with a pinch of salt and pepper. 
        The eggs are then gently poured into a hot, greased skillet, where they cook until they form a tender, fluffy pillow of goodness. 
        Omelettes can be personalized with a wide array of fillings, such as cheese, diced vegetables, herbs, or meats, allowing for endless flavor combinations to suit individual tastes. 
        The art of folding the omelette over its fillings to create a neat, crescent-shaped package adds to its visual appeal. 
        Whether it's a classic French omelette, a hearty Western omelette with ham and peppers, or a vegetarian version bursting with spinach and feta, this versatile dish embodies comfort and creativity. 
        Omelettes are a go-to choice for breakfast or brunch, but their simplicity and adaptability make them a delightful option for any meal of the day, offering both nourishment and culinary pleasure to those who enjoy them.'''));
    return (diets);
  }
}
