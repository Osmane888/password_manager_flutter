import 'package:password_manager/src/passwordEntries/domain/entities/passwordEntry_model.dart';

final List <PasswordEntry> passwordEntries = [
  PasswordEntry(
    uid: '1',
    userUid: 'user_001',
    serviceName: 'Gmail',
    linkedEmail: 'osmane@gmail.com',
    password: 'p@ssword123',
  ),
  PasswordEntry(
    uid: '2',
    userUid: 'user_001',
    serviceName: 'GitHub',
    linkedEmail: 'osmane.dev@gmail.com',
    password: 'g!thub2024',
  ),
  PasswordEntry(
    uid: '3',
    userUid: 'user_001',
    serviceName: 'Netflix',
    linkedEmail: 'osmane@stream.com',
    password: 'n3tflix!cool',
  ),
  PasswordEntry(
    uid: '4',
    userUid: 'user_002',
    serviceName: 'Facebook',
    linkedEmail: 'testuser@fb.com',
    password: 'Fb_2025pass',
  ),
  PasswordEntry(
    uid: '5',
    userUid: 'user_002',
    serviceName: 'Twitter',
    linkedEmail: 'testuser@x.com',
    password: 'X_birdy!',
  ),
  PasswordEntry(
    uid: '6',
    userUid: 'user_003',
    serviceName: 'Amazon',
    linkedEmail: 'client.amazon@mail.com',
    password: 'Am@zonPrime#123',
  ),
];