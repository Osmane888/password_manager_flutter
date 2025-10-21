import 'package:password_manager/src/passwordEntries/domain/entities/passwordEntry_model.dart';
import 'package:password_manager/src/passwordEntries/providers/passwordEntries_dummy.dart';

class FakePasswordentriesRepositories {
  List<PasswordEntry> getPasswordEntries() {
    return passwordEntries;
  }

  PasswordEntry? getPasswordEntry(String id) {
    return passwordEntries.firstWhere((passwordEntry) => passwordEntry.uid == id);
  }
}