import 'package:test_docker/modules/admin/pet_type/update_pet_type_info/pet_type_info_model.dart';

abstract class AddPetProfileWithNoAuthenticationServiceInterface {
  Future<List<PetTypeModel>> getPetTypeInfoData();
}
