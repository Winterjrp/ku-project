import 'package:test_docker/modules/admin/recipe/update_recipe/recipes_model.dart';

abstract class RecipeManagementServiceInterface {
  Future<List<RecipeModel>> getRecipeListData();
  Future<void> deleteRecipeData({required String recipeId});
  // Future<void> addRecipeData({required RecipeModel recipesData});
  Future<void> editRecipeData({required RecipeModel recipeData});
}
