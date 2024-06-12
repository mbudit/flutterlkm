import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal();

  final _storage = GetStorage();

  // Method buat save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Method buat baca data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Method buat hapus data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear semua data di storage
  Future<void> clearAll() async {
    await _storage.erase();
  }

}