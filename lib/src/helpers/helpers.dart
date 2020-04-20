import 'package:flutter/services.dart' as services;

void ChangeStatusLigth() {
  services.SystemChrome.setSystemUIOverlayStyle( services.SystemUiOverlayStyle.light );
}

void ChangeStatusDark() {
  services.SystemChrome.setSystemUIOverlayStyle( services.SystemUiOverlayStyle.dark );
}