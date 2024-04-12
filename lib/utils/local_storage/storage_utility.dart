import 'package:get_storage/get_storage.dart';

class MyLocalStorage {
  static final MyLocalStorage _instance = MyLocalStorage._internal();

  factory MyLocalStorage() {
    return _instance;
  }
  MyLocalStorage._internal();

  final _storage = GetStorage();

  //save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  //remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  //clear data
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
