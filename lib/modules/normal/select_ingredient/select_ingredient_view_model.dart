import 'package:test_docker/manager/service_manager.dart';
import 'package:test_docker/modules/normal/select_ingredient/normal_user_search_pet_recipe_info.dart';
import 'package:test_docker/services/select_ingredient_service/select_ingredient_mock_service.dart';
import 'package:test_docker/utility/hive_models/ingredient_model.dart';
import 'package:test_docker/modules/admin/admin_get_recipe/get_recipe_model.dart';
import 'package:test_docker/services/select_ingredient_service/select_ingredient_service.dart';
import 'package:test_docker/services/select_ingredient_service/select_ingredient_service_interface.dart';

class SelectIngredientViewModel {
  late List<IngredientModel> selectedIngredient;
  late Future<List<IngredientModel>> ingredientListData;
  late List<IngredientModel> ingredientList;
  late SelectIngredientServiceInterface service;
  SelectIngredientViewModel() {
    service = ServiceManager.isRealService
        ? SelectIngredientService()
        : SelectIngredientMockService();
    selectedIngredient = [];
  }

  Future<void> fetchIngredientData() async {
    ingredientListData = service.getIngredientListData();
    ingredientList = await ingredientListData;
  }

  Future<GetRecipeModel> onUserSearchRecipe(
      {required NormalUserSearchPetRecipeInfoModel postDataForRecipe}) async {
    return await service.searchRecipe(postDataForRecipe: postDataForRecipe);
  }
}
