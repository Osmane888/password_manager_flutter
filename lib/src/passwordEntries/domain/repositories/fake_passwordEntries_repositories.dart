import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_manager/src/passwordEntries/domain/entities/passwordEntry_model.dart';
import 'package:password_manager/src/passwordEntries/providers/passwordEntries_dummy.dart';

class FakePasswordentriesRepositories {
  
  FakePasswordentriesRepositories._();
  static FakePasswordentriesRepositories instance = FakePasswordentriesRepositories._();

  final List<PasswordEntry> _passwordEntries = passwordEntries;

  List<PasswordEntry> getPasswordEntries() {
    return _passwordEntries;
  }

  PasswordEntry? getPasswordEntry(String id) {
    return _passwordEntries.firstWhere((passwordEntry) => passwordEntry.uid == id);
  }
}

final passwordEntriesRepositoryProvider = Provider<FakePasswordentriesRepositories>((ref) {
  return FakePasswordentriesRepositories.instance;
});