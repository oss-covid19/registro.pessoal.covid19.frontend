import 'package:covid19_pesquisa/model/validacao/entrar_model.dart';
import 'package:covid19_pesquisa/model/validacao/esqueceu_senha_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

///
/// hasConexao:      Se há conexão: wifi ou dados
/// isLogado:        Se Usuário fez Login ou não
/// isEntrar:        Ação escolhida pelo Usuário
/// isEsqueciASenha: Ação escolhida pelo Usuário
/// isInscrever:     Ação escolhida pelo Usuário
///

class AppModel with ChangeNotifier, DiagnosticableTreeMixin {
  ///
  /// Codigo de Validação para tela Entrar
  ///
  EntrarModel _entrarValidation = EntrarModel();
  EntrarModel get entrarValidation => _entrarValidation;

  ///-------------------------------------------------------------------------

  ///
  /// Codigo de Validação para tela Esqueceu a Senha
  ///
  EsqueceuSenhaModel _esqueceuSenhaValidacao = EsqueceuSenhaModel();
  EsqueceuSenhaModel get esqueceuSenhaValidacao => _esqueceuSenhaValidacao;


  ///-------------------------------------------------------------------------


  bool _hasConexao = false;

  bool get hasConexao => _hasConexao;
  set hasConexao(bool hasConexao) =>
      {_hasConexao = isLogado, notifyListeners()};

  ///-------------------------------------------------------------------------

  bool _isLogado = false;

  bool get isLogado => _isLogado;
  set isLogado(bool isLogado) => {_isLogado = isLogado, notifyListeners()};

  ///-------------------------------------------------------------------------

  bool _isEntrar = false;

  bool get isEntrar => _isEntrar;
  set isEntrar(bool isEntrar) => {_isEntrar = isEntrar, notifyListeners()};

  ///-------------------------------------------------------------------------

  bool _isEsqueciASenha = false;

  bool get isEsqueceuASenha => _isEsqueciASenha;
  set isEsqueceuASenha(bool isEsqueciASenha) =>
      {_isEsqueciASenha = isEsqueciASenha, notifyListeners()};

  ///-------------------------------------------------------------------------

  bool _isInscrever = false;

  bool get isInscrever => _isInscrever;
  set isInscrever(bool isInscrever) =>
      {_isInscrever = isInscrever, notifyListeners()};


  bool _isManterLogado = false;

  bool get isManterLogado => _isManterLogado;
  set isManterLogado(bool isManterLogado) =>
     {_isManterLogado = isManterLogado, notifyListeners()};


  ///
  /// Debugging
  ///
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('isLogado', _isLogado));
    properties.add(DiagnosticsProperty<bool>('isEntrar', _isEntrar));
    properties.add(DiagnosticsProperty<bool>('isEsqueciASenha', _isEsqueciASenha));
    properties.add(DiagnosticsProperty<bool>('isInscrever', _isInscrever));
    properties.add(DiagnosticsProperty<bool>('isManterLogado', _isManterLogado));
    properties.add(DiagnosticsProperty<bool>('hasConexao', _hasConexao));
  }

  ///--------------------------------------------------------------------------

  static AppModel instanceOf(BuildContext context) {
    return Provider.of<AppModel>(context, listen: false);
  }

  ///
  /// inicializa estados
  ///
  void reset() {
    this.isManterLogado = false;
    this.isLogado = false;
    this.hasConexao = false;
    this.isEntrar = false;
    this.isEsqueceuASenha = false;
    this.isInscrever = false;
  }
}
