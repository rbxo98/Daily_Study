import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app/app.dart';
import 'app/config/config.dart';

void main()async{
  await dotenv.load(fileName:EnvPath.envPath);
  init();
}

