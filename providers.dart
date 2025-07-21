import 'package:flutter/material.dart';

class ProviderHappy extends ChangeNotifier {
  int countEmotion = 0;
  final Color emotionColor = Colors.yellow;
  void changeMainColor() {
    countEmotion++;
    notifyListeners();
  }
}

class ProviderSad extends ChangeNotifier {
  int countEmotion = 0;
  final Color emotionColor = Colors.blue;
  void changeMainColor() {
    countEmotion++;
    notifyListeners();
  }
}

class ProviderNeutral extends ChangeNotifier {
  int countEmotion = 0;
  final Color emotionColor = Colors.grey;
  void changeMainColor() {
    countEmotion++;
    notifyListeners();
  }
}

class ProviderAngry extends ChangeNotifier {
  int countEmotion = 0;
  final Color emotionColor = Colors.red;
  void changeMainColor() {
    countEmotion++;
    notifyListeners();
  }
}

class ProviderWorried extends ChangeNotifier {
  int countEmotion = 0;
  final Color emotionColor = Colors.purple;
  void changeMainColor() {
    countEmotion++;
    notifyListeners();
  }
}

class ProviderPageColor extends ChangeNotifier {
  Color backgroundColor = Colors.white;
  void setColor(Color newColor) {
    backgroundColor = newColor;
    notifyListeners();
  }
}

class ProviderEmoji extends ChangeNotifier {
  IconData emoji = Icons.question_mark;
  void setEmoji(IconData newEmoji) {
    emoji = newEmoji;
    notifyListeners();
  }
}

class ProviderTextEmotion extends ChangeNotifier {
  String emotionString = "Press a button to start";
  void setEmotionString(String newEmotionName) {
    emotionString = newEmotionName;
    notifyListeners();
  }
}