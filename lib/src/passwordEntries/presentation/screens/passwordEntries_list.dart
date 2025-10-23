import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_manager/src/passwordEntries/domain/repositories/fake_passwordEntries_repositories.dart';

class PasswordentriesList extends ConsumerWidget {
  const PasswordentriesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final passwordEntriesRepository = ref.watch(passwordEntriesRepositoryProvider);
    final listPasswordEntries = passwordEntriesRepository.getPasswordEntries();

    return Scaffold(
      body: ListView.builder(
        itemCount: listPasswordEntries.length,
        itemBuilder: (context, index) {
          final passwordEntry = listPasswordEntries[index];
          return Card(
            child: ListTile(
              leading: const Icon(Icons.lock_outline),
              title: Text(passwordEntry.serviceName),
              subtitle: Text(passwordEntry.linkedEmail),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}