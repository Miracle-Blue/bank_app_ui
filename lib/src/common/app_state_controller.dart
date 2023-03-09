import 'package:bank_app/src/common/constants/app_image.dart';
import 'package:flutter/material.dart';

import '../model/card_model.dart';
import '../model/cryto_model.dart';
import '../model/user_model.dart';

class AppStateController extends ChangeNotifier {
  final User user = User(
    name: 'Bryce Turner',
    userImage: 'assets/images/im_profile.png',
    card: CardModel(
      type: 'mastercard',
      money: '\$1.924,35',
      endDate: '04/24',
      cardNumber: '5489 7654 3210 7894',
    ),
  );

  final List<Crypto> transactionData = [
    Crypto(data: "13 jan 22", image: AppImages.amazonLogo, name: "Dribbble", sena: "-102,24", time: "3:24 PM"),
    Crypto(data: "13 jan 22", image: AppImages.paypalLogo, name: "Dribbble", sena: "-102,24", time: "3:24 PM"),
    Crypto(data: "13 jan 22", image: AppImages.youtubeLogo, name: "Dribbble", sena: "-102,24", time: "3:24 PM"),
    Crypto(data: "13 jan 22", image: AppImages.dribbbleLogo, name: "Dribbble", sena: "-102,24", time: "3:24 PM"),
  ];
}
