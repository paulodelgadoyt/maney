class DbValidator {
  static String? validateField({required String value}) {
    if (value.isEmpty) {
      return 'O campo não pode estar vazio';
    }

    return null;
  }

  static String? validateUserID({required String uid}) {
    if (uid.isEmpty) {
      return 'O ID do usuário não pode estar vazio';
    } else if (uid.length <= 3) {
      return 'O ID do usuário deve ter mais de 3 caracteres';
    }

    return null;
  }
}
