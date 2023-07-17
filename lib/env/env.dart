import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'ENV_TEST', obfuscate: true)
  static final String ENV_TEST = _Env.ENV_TEST ;
}
