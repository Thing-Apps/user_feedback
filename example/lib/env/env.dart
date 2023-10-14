
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: './assets/.env')
class Env {
  @EnviedField(varName: 'SUPABASE_URL', obfuscate: true)
  final String supabaseUrl = _Env.supabaseUrl;
  @EnviedField(varName: 'ANON_KEY', obfuscate: true)
  final String anonKey = _Env.anonKey;
  @EnviedField(varName: 'JWT_SECRET', obfuscate: true)
  final String jwtSecret = _Env.jwtSecret;
}
