import 'package:flutter/material.dart';

class ContainerModel with ChangeNotifier {
  double width = 200;
  double height = 200;
  double borderRadius = 20;

  // Зміна ширини контейнера
  void setWidth(double newWidth) {
    width = newWidth;
    notifyListeners();
  }

  // Зміна висоти контейнера
  void setHeight(double newHeight) {
    height = newHeight;
    notifyListeners();
  }

  // Зміна радіусу верхнього правого кута
  void setBorderRadius(double newRadius) {
    borderRadius = newRadius;
    notifyListeners();
  }
}
