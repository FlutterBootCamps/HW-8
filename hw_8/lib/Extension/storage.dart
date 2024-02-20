
import 'package:get_storage/get_storage.dart';

class MyStorage {
  final box = GetStorage();

  List<Map<String, String>> get dataList {
    final data = box.read('dataList');
    if (data is List<Map<String, String>>?) {
      return data ?? [];
    } else {
      
      return [];
    }
  }
  
  void addData(String name, String email) {
    final newData = {'name': name, 'email': email};
    box.write('dataList', [...dataList, newData]);
  }

  void clearData() {
    box.remove('dataList');
  }
}
