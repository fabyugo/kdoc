import 'package:flutter/material.dart';


class ColorsConfig {
//  Color _mainColor = Color(0xFFFF4E6A);
  static final Color textColor = Color(0xFF344968);

  Color _primaryColor = Color(0xFF6100ED);
  Color _accentColor = Color(0xFF03DAC6);
  Color _primaryDarkColor = Color(0xFFE64A19); //230,74,25
  Color _primaryLighColor = Color(0xFFFFCCBC);
  Color _primeiraColor = Color(0xFF03DAC6);
  Color _segundaColor = Color(0xFFEE6352);
  Color _terceiraColor = Color(0xFFFA8334);
  Color _quartaColor = Color(0xFF57A773);
  Color _quintaColor = Color(0xFF484D6D);
  Color _focusColor = Color(0xFF3F51B5);
  Color _primaryTextColor = Color(0xFF212121);
  Color _secondaryTextColor = Color(0xFF757575);
  Color _dividerColor = Color.fromRGBO(240, 240, 240, 1);
  Color _textIconsColor = Color(0xFFFFFFFF);

  Color primeiraColor(double opacity) {
    return this._primeiraColor.withOpacity(opacity);
  }

  Color segundaColor(double opacity) {
    return this._segundaColor.withOpacity(opacity);
  }

  Color terceiraColor(double opacity) {
    return this._terceiraColor.withOpacity(opacity);
  }

  Color quartaColor(double opacity) {
    return this._quartaColor.withOpacity(opacity);
  }

  Color quintaColor(double opacity) {
    return this._quintaColor.withOpacity(opacity);
  }

  Color focusColor(double opacity) {
    return this._focusColor.withOpacity(opacity);
  }

  Color primaryColor(double opacity) {
    return this._primaryColor.withOpacity(opacity);
  }

  Color accentColor(double opacity) {
    return this._accentColor.withOpacity(opacity);
  }

  Color primaryDarkColor(double opacity) {
    return this._primaryDarkColor.withOpacity(opacity);
  }

  Color primaryLighColor(double opacity) {
    return this._primaryLighColor.withOpacity(opacity);
  }

  Color primaryTextColor(double opacity) {
    return this._primaryTextColor.withOpacity(opacity);
  }

  Color secondaryTextColor(double opacity) {
    return this._secondaryTextColor.withOpacity(opacity);
  }

  Color dividerColor(double opacity) {
    return this._dividerColor.withOpacity(opacity);
  }

  Color textIconsColor(double opacity) {
    return this._textIconsColor.withOpacity(opacity);
  }
}