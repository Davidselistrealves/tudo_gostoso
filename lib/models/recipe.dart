class Recipe {
  String photo;
  String name;
  int preparationTime;
  int income;
  int numberOfFavorites;
  int numberOfComments;
  List<String> ingredientsPaste;
  List<String> ingredientsTopping;
  List<String> preparationModePaste;
  List<String> preparationModeTopping;
  //Construtor
  Recipe({
    required this.name,
    required this.photo,
    required this.preparationTime,
    required this.income,
    required this.ingredientsPaste,
    required this.ingredientsTopping,
    required this.numberOfComments,
    required this.numberOfFavorites,
    required this.preparationModePaste,
    required this.preparationModeTopping,
  });
}
