import 'package:flutter/material.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:xclone_flutter/constants/app_assets.dart';
import 'package:xclone_flutter/constants/app_strings.dart';
import 'package:xclone_flutter/main.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Image(
          image: AssetImage(AppAssets.xLogo),
          height: 40,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 14),
        children: [
          const Text(
            AppStrings.createAccount,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: const InputDecoration(hintText: AppStrings.name),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: const InputDecoration(hintText: AppStrings.email),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: const InputDecoration(hintText: AppStrings.dob),
          ),
          const SizedBox(
            height: 10,
          ),
          SignInWithEmailButton(caller: client.modules.auth),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        isExtended: true,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        label: const Text(AppStrings.next),
        icon: const Icon(Icons.keyboard_arrow_right),
        onPressed: () {},
      ),
    );
  }
}
