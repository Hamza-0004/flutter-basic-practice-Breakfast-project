class DietModel {
  String name;
  String iconPath;
  String duration;
  String level;
  String calorie;
  bool viewIsSelected;

  DietModel(
      {required this.name,
      required this.iconPath,
      required this.duration,
      required this.calorie,
      required this.level,
      required this.viewIsSelected});

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(DietModel(
        name: 'Honey Pancake',
        iconPath: 'assets/icons/pancakes.svg',
        duration: '30mins',
        calorie: '190',
        level: "Easy",
        viewIsSelected: true));

    diets.add(DietModel(
        name: 'Chae Paratha',
        iconPath: 'assets/icons/tea.svg',
        duration: '20mins',
        calorie: '290',
        level: "Super Easy",
        viewIsSelected: true));

    diets.add(DietModel(
        name: 'Pizza',
        iconPath: 'assets/icons/pizza.svg',
        duration: '30mins',
        calorie: '300',
        level: "moderate",
        viewIsSelected: true));

    diets.add(DietModel(
        name: 'Omlette',
        iconPath: 'assets/icons/omlette.svg',
        duration: '20mins',
        calorie: '150',
        level: "Easy",
        viewIsSelected: true));

    return (diets);
  }
}
