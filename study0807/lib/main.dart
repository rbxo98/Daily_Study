import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:study0807/after_login_page.dart';
import 'package:study0807/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

final secureStorage = FlutterSecureStorage();
late final userInfoProvider;
class LoginPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    init(context);
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            signInWithGoogle().then((value) {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AfterLoginPage()));
            }).onError((error, stackTrace) {print("로그인에러");});
          },
          child: Text("Google Login"),
        ),
      ),
    );
  }
}

void init(BuildContext context) async {
  print(await secureStorage.read(key: 'accessToken'));
  print(await secureStorage.read(key: 'idToken'));
  if ((await secureStorage.containsKey(key: 'accessToken'))) {
    final credential = GoogleAuthProvider.credential(
      accessToken: await secureStorage.read(key: 'accessToken'),
      idToken: await secureStorage.read(key: 'idToken'),
    );
    final userCredential = await FirebaseAuth.instance.signInWithCredential(
        credential);
    userInfoProvider = Provider<UserCredential>((ref) => userCredential);
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AfterLoginPage()));
    print("done");
  }
}

Future<void> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    secureStorage.write(key: 'accessToken', value: googleAuth?.accessToken);
    final userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
    userInfoProvider = Provider<UserCredential>((ref) => userCredential);
}