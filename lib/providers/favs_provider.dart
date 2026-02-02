import 'package:flutter_riverpod/legacy.dart';
import 'package:meals/models/meal.dart';

class FavMealsNotifier extends StateNotifier<List<Meal>> {
  FavMealsNotifier() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {
    final isFav = state.contains(meal);
    if (isFav) {
      state = state.where((ml) => ml.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favsProvider = StateNotifierProvider<FavMealsNotifier, List<Meal>>((ref) {
  return FavMealsNotifier();
});
