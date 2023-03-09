import 'card_model.dart';

class User {
  final String name;
  final String userImage;
  final CardModel? card;

  User({
    required this.name,
    required this.userImage,
    this.card,
  });
}
