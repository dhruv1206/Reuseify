import 'package:shared_preferences/shared_preferences.dart';

abstract interface class LocalStorageRepo {
  Future<void> init();
  dynamic getDynamic(String key);

  Future<bool> setBool(String key, bool value);
  Future<bool> setInt(String key, int value);
  Future<bool> setDouble(String key, double value);
  Future<bool> setString(String key, String value);
  Future<bool> setStringList(String key, List<String> value);
  bool getBool(String key, [bool? defValue]);
  int? getInt(String key, [int? defValue]);
  double getDouble(String key, [double? defValue]);
  String getString(String key, [String? defValue]);
  List<String> getStringList(String key, [List<String>? defValue]);
  Future<bool> remove(String key);
  Future<bool> clear();
}

class SPLocalStorage implements LocalStorageRepo {
  Future<SharedPreferences> get _instance async =>
      _prefs ??= await SharedPreferences.getInstance();
  SharedPreferences? _prefs;

  SharedPreferences? _prefsInstance;

  SPLocalStorage() {
    init();
  }

  /// In case the developer does not explicitly call the init() function.

//// Initialize the SharedPreferences object in the State object's iniState() function.
  @override
  Future<SharedPreferences?> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance;
  }

//// Best to clean up by calling this function in the State object's dispose() function.
  void dispose() {
    _prefs = null;
    _prefsInstance = null;
  }

  Future<void> isPreferenceReady() async {
    await init();
    // assert(_initCalled,
    //     "Prefs.init() must be called first in an initState() preferably!");
    // assert(_prefsInstance != null, "SharedPreferences not ready yet!");
  }

  /// Reads a value of any type from persistent storage.
  @override
  dynamic getDynamic(String key) {
    isPreferenceReady();
    return _prefsInstance!.get(key);
  }

  @override
  bool getBool(String key, [bool? defValue]) {
    isPreferenceReady();
    return _prefsInstance!.getBool(key) ?? defValue ?? false;
  }

  @override
  int? getInt(String key, [int? defValue]) {
    return _prefsInstance!.getInt(key) ?? defValue;
  }

  @override
  double getDouble(String key, [double? defValue]) {
    isPreferenceReady();
    return _prefsInstance!.getDouble(key) ?? defValue ?? 0.0;
  }

  @override
  String getString(String key, [String? defValue]) {
    isPreferenceReady();
    return _prefsInstance!.getString(key) ?? defValue ?? "";
  }

  @override
  List<String> getStringList(String key, [List<String>? defValue]) {
    isPreferenceReady();
    return _prefsInstance!.getStringList(key) ?? defValue ?? [""];
  }

  /// Saves a boolean [value] to persistent storage in the background.
  /// If [value] is null, this is equivalent to calling [remove()] on the [key].
  @override
  Future<bool> setBool(String key, bool value) async {
    var prefs = await _instance;
    return prefs.setBool(key, value);
  }

  /// Saves an integer [value] to persistent storage in the background.
  /// If [value] is null, this is equivalent to calling [remove()] on the [key].
  @override
  Future<bool> setInt(String key, int value) async {
    var prefs = await _instance;
    return prefs.setInt(key, value);
  }

  /// Saves a double [value] to persistent storage in the background.
  /// Android doesn't support storing doubles, so it will be stored as a float.
  /// If [value] is null, this is equivalent to calling [remove()] on the [key].
  @override
  Future<bool> setDouble(String key, double value) async {
    var prefs = await _instance;
    return prefs.setDouble(key, value);
  }

  /// Saves a string [value] to persistent storage in the background.
  /// If [value] is null, this is equivalent to calling [remove()] on the [key].
  @override
  Future<bool> setString(String key, String value) async {
    var prefs = await _instance;
    return prefs.setString(key, value);
  }

  /// Saves a list of strings [value] to persistent storage in the background.
  /// If [value] is null, this is equivalent to calling [remove()] on the [key].
  @override
  Future<bool> setStringList(String key, List<String> value) async {
    var prefs = await _instance;
    return prefs.setStringList(key, value);
  }

  /// Removes an entry from persistent storage.
  @override
  Future<bool> remove(String key) async {
    var prefs = await _instance;
    return prefs.remove(key);
  }

  /// Completes with true once the user preferences for the app has been cleared.
  @override
  Future<bool> clear() async {
    var prefs = await _instance;
    return prefs.clear();
  }
}
