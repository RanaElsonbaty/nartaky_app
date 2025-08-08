

import 'package:nrtaky/core/helper_functions/api_contants.dart';
import 'package:nrtaky/core/helper_functions/shared_preferences.dart';
import 'package:nrtaky/features/auth/register/data/model/user_model.dart';

class GlobalStorage {
  static String appLang = "";
  static String token = "";
  static int userId = 0;
  static String userName = "";
  static String userPhone = "";
  static String userImage = "";
  static String userPassword = "";
  static String userEmail = "";

  static Future<void> loadData() async {
    appLang = CacheHelper.getData(key: "myLang") as String? ?? "";
    token = CacheHelper.getData(key: ApiConstants.TOKEN) as String? ?? "";
    userId = CacheHelper.getData(key: ApiConstants.USER_ID) as int? ?? 0;
    userName = CacheHelper.getData(key: ApiConstants.USER_NAME) as String? ?? "";
    userPhone = CacheHelper.getData(key: ApiConstants.USER_PHONE) as String? ?? "";
    userImage = CacheHelper.getData(key: ApiConstants.USER_Image) as String? ?? "";
    userPassword = CacheHelper.getData(key: ApiConstants.USER_PASSWORD) as String? ?? "";
    userEmail = CacheHelper.getData(key: ApiConstants.USER_EMAIL) as String? ?? "";
  }

  static Future<void> saveUserData(UserModel user) async {
    await CacheHelper.cacheData(key: ApiConstants.USER_ID, value: user.id);
    await CacheHelper.cacheData(key: ApiConstants.USER_NAME, value: user.name);
    await CacheHelper.cacheData(key: ApiConstants.USER_PHONE, value: user.phone);
    await CacheHelper.cacheData(key: ApiConstants.USER_Image, value: user.image);
    await CacheHelper.cacheData(key: ApiConstants.TOKEN, value: user.token);
    //loadData(); // Remove this line
  }
  static Future<void> clearData() async {
    await CacheHelper.clearData();
    token = "";
    userId = 0;
    userName = "";
    userPhone = "";
    userImage = "";
    userPassword = "";
    appLang="";
  }
}
