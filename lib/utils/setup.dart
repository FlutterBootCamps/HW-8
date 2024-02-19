import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_contact_list/data%20layer/main_data_layer.dart';
import 'package:my_contact_list/models/contact_model.dart';

Future<void> setup() async {
  await GetStorage.init();
  if (GetStorage().read("contacts") == null) {
    List<Contact> emptyList = [];
    GetStorage().write("contacts", emptyList);
  }

  GetIt.I.registerSingleton<MainData>(MainData());
}
