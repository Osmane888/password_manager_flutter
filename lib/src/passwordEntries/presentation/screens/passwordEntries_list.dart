import 'package:flutter/material.dart';
import 'package:password_manager/src/passwordEntries/domain/repositories/fake_passwordEntries_repositories.dart';

class PasswordentriesList extends StatelessWidget {
  const PasswordentriesList({super.key});

  @override
  Widget build(BuildContext context) {

    final listPasswordEntries = FakePasswordentriesRepositories().getPasswordEntries();

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