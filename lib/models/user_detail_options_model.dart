class UserDetailOptionsModel {
  String _optionsName;
  bool _isSelected;

  UserDetailOptionsModel(this._optionsName, this._isSelected);

  bool get isSelected => _isSelected;

  set isSelected(bool value) {
    _isSelected = value;
  }

  String get optionsName => _optionsName;

  set optionsName(String value) {
    _optionsName = value;
  }
}