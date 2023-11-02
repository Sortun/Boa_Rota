import 'package:find_transportes/Cadastro/tela_cadastro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

//foi nescessario criar uma modelagem para poder declarar um future para o usuario e para o showsnapbar
class CadastroResult {
  final String? nomeUsuario;
  final String? errorMessage;

  CadastroResult({this.nomeUsuario, this.errorMessage});
}

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  //Interação: Cadastro
  Future<CadastroResult> cadastroUsuario({
    required String nome,
    required String email,
    required String senha,
  }) async {
    try {
      final UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: senha,
      );

      try {
        await userCredential.user!.updateDisplayName(nome);
      } catch (e) {
        print("Erro ao atualizar o nome de exibição: $e");
      }

      return CadastroResult(nomeUsuario: nome, errorMessage: null);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        cleaner();
        return CadastroResult(
            nomeUsuario: null, errorMessage: "O usuário já está cadastrado");
      } else if (e.code == "invalid-email") {
        cleaner();
        return CadastroResult(
            nomeUsuario: null,
            errorMessage: "Email inválido. Verifique o formato do email.");
      } else if (e.code == "weak-password") {
        cleaner();
        return CadastroResult(
            nomeUsuario: null,
            errorMessage: "A senha deve ter pelo menos 6 caracteres.");
      } else {
        cleaner();

        print("Erro no cadastro: $e");
        return CadastroResult(
            nomeUsuario: null, errorMessage: "Erro no cadastro: ${e.message}");
      }
    }
  }
  //Interação: Login

  Future<String?> logarUsuarios(
      {required String email,
      required String senha,
      bool manterConectado = false
      }) async {
    if (email.isEmpty || senha.isEmpty) {
      cleaner();
      return "Email e senha são obrigatórios.";
    }

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: senha);

           if (manterConectado) {
      final user = _firebaseAuth.currentUser;
      if (user != null) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('manterConectado', true);
      }
    } else {
      // Se manterConectado for falso, defina a preferência como false.
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('manterConectado', false);
    }
      return null; // Login bem-sucedido.
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email") {
        cleaner();
        return "Email inválido. Verifique o formato do email.";
      } else {
        cleaner();
        return "Erro no login: ${e.message}";
      }
    }
  }

// Método para deslogar
  Future<void> deslogar() async {
    try {
      await FirebaseAuth.instance.signOut();
      cleaner();
    } catch (e) {
      print('Erro ao deslogar: $e');
    }
  }
}
