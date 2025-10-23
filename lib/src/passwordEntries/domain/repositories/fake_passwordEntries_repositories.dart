import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_manager/src/passwordEntries/domain/entities/passwordEntry_model.dart';
import 'package:password_manager/src/passwordEntries/providers/passwordEntries_dummy.dart';

class FakePasswordentriesRepositories {

  final List<PasswordEntry> _passwordEntries = passwordEntries;

  List<PasswordEntry> getPasswordEntries() {
    return _passwordEntries;
  }

  PasswordEntry? getPasswordEntry(String id) {
    return _passwordEntries.firstWhere((passwordEntry) => passwordEntry.uid == id);
  }


 // Une autre façon de faire que je testerai plus tard

  Future<List<PasswordEntry>> fetchPasswordsList() {
    return Future.value(_passwordEntries);
  }

  Stream<List<PasswordEntry>> watchPasswordsList() {
    return Stream.value(_passwordEntries);
  }

  Stream <PasswordEntry?> watchPassword(String id) {
    return watchPasswordsList()
      .map((password) => password.firstWhere((password) => password.uid == id));
  }
}

final passwordEntriesRepositoryProvider = Provider<FakePasswordentriesRepositories>((ref) {
  return FakePasswordentriesRepositories();
});

// Les providers pour les méthodes Future et Stream

final passwordsListStreamProvider = StreamProvider<List<PasswordEntry>> ((ref) {
  final passwordsRepositoy = ref.watch(passwordEntriesRepositoryProvider);
  return passwordsRepositoy.watchPasswordsList();
});