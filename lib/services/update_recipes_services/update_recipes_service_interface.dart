import 'package:test_docker/utility/hive_models/ingredient_model.dart';
import 'package:test_docker/modules/admin/pet_type/update_pet_type_info/pet_type_info_model.dart';
import 'package:test_docker/modules/admin/recipe/update_recipe/recipes_model.dart';

abstract class UpdateRecipeServiceInterface {
  Future<List<IngredientModel>> getIngredientList();
  Future<List<PetTypeModel>> getPetTypeList();
  Future<void> addRecipe({required RecipeModel recipeData});
}
