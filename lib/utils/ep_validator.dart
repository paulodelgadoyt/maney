class EPValidator {
  static String? validateName({required String name}) {
    if (name.isEmpty) {
      return 'O nome não pode estar vazio';
    }

    return null;
  }

  static String? validateEmail({required String email}) {
    RegExp emailRegExp = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

    if (email.isEmpty) {
      return 'O e-mail não pode estar vazio';
    } else if (!emailRegExp.hasMatch(email)) {
      return 'Insira um email valido';
    }

    return null;
  }

  static String? validatePassword({required String password}) {
    if (password.isEmpty) {
      return 'Senha não pode estar vazia';
    } else if (password.length < 6) {
      return 'Digite uma senha com comprimento de pelo menos 6';
    }

    return null;
  }
}
