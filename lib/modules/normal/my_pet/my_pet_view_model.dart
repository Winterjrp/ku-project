import 'package:test_docker/modules/normal/login/user_info_model.dart';
import 'package:test_docker/modules/normal/my_pet/models/home_model.dart';
import 'package:test_docker/services/home_services/home_mock_service.dart';
import 'package:test_docker/services/home_services/home_service_interface.dart';
import 'package:test_docker/services/shared_preferences_services/user_info.dart';

class MyPetViewModel {
  late HomeServiceInterface services;
  late Future<MyPetModel> homeDataFetch;
  late MyPetModel homeData;
  late Future<UserInfoModel?> retrievedUserInfoData;
  late UserInfoModel? retrievedUserInfo;

  MyPetViewModel() {
    services = HomeMockService();
  }

  Future<MyPetModel> getHomeData() async {
    try {
      retrievedUserInfoData = SharedPreferencesService.getUserInfo();
      retrievedUserInfo = await retrievedUserInfoData;

      homeDataFetch = services.getPetListData(userID: "1234");
      homeData = await homeDataFetch;
    } catch (e) {
      print(e);
    }
    return homeDataFetch;
  }
}
