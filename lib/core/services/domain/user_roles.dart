// ignore_for_file: constant_identifier_names
enum UserRoles { USER, OWNER, ADMIN }

extension UserRolesNamesExtension on UserRoles {
  String get name {
    switch (this) {
      case UserRoles.USER:
        return 'USER';
      case UserRoles.OWNER:
        return 'OWNER';
      case UserRoles.ADMIN:
        return 'ADMIN';
    }
  }
}

extension GetByName<T extends Enum> on Iterable<UserRoles> {
  UserRoles getByName(String name) {
    for (final value in this) {
      if (value.name == name) return value;
    }
    return UserRoles.USER;
  }
}
