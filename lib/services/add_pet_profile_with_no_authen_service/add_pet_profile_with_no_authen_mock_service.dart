import 'dart:async';
import 'package:test_docker/utility/hive_box.dart';
import 'package:test_docker/modules/admin/pet_type/update_pet_type_info/pet_type_info_model.dart';
import 'package:test_docker/services/add_pet_profile_with_no_authen_service/add_pet_profile_with_no_authen_service_interface.dart';

class AddPetProfileWithNoAuthenticationMockService
    implements AddPetProfileWithNoAuthenticationServiceInterface {
  @override
  Future<List<PetTypeModel>> getPetTypeInfoData() async {
    await Future.delayed(const Duration(milliseconds: 1000), () {});
    List<PetTypeModel> petTypeInfoListData = petTypeBox.values.toList();
    return petTypeInfoListData;
  }
}
