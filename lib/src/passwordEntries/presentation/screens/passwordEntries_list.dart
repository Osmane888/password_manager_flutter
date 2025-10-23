import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_manager/src/passwordEntries/domain/repositories/fake_passwordEntries_repositories.dart';

class PasswordentriesList extends ConsumerWidget {
  const PasswordentriesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final passwordEntriesValue = ref.watch(passwordsListStreamProvider);

    return Scaffold(
      body : passwordEntriesValue.when(
        data: (passwords) => ListView.builder(
            itemCount: passwords.length,
            itemBuilder: (context, index) {
          
              //contient l'objet courant de la liste
              final passwordEntry = passwords[index];
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
        error: (r, st) => Center(child: Text('Erreur dans le fetch de données')) ,
        loading: () => Center(child: CircularProgressIndicator()),
        ),
    );
    
    
    /*
    return Scaffold(
      body: ListView.builder(
        itemCount: listPasswordEntries.length,
        itemBuilder: (context, index) {

          //contient l'objet courant de la liste
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
    */
  }
}