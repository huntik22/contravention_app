import 'package:flutter/material.dart';
import 'views/inscription.dart';
import 'views/inscription1.dart';
import 'views/login_filled.dart';
import 'views/otp_authentication.dart';
import 'views/paiment_reussi.dart';
import 'views/password_recovery.dart';
import 'views/password_recovery2.dart';
import 'views/recharge_wallet.dart';
import 'views/rechargement_reussi.dart';
import 'views/reset_password.dart';
import 'views/verify_identity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
       home: const LoginFilled(),
      //  home: const OtpAuthentication(),
      //  home: const PasswordRecovery(),
      //  home: const VerifyIdentity(),
      //  home: const Resetpassword(),
      // home: const Inscription(),
      // home: const Inscription1(),
      // home: const PaiementReussi(),
      // home: const RechargementReussi(),
      // home: const RechargeWallet(),
      // home: const  PasswordRecovery2(),
    );
  }
}

