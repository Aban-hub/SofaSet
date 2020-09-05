class FeatureModel {
  String _featureName;
  bool _isSelected;

  FeatureModel(this._featureName, this._isSelected);

  bool get isSelected => _isSelected;

  set isSelected(bool value) {
    _isSelected = value;
  }

  String get featureName => _featureName;

  set featureName(String value) {
    _featureName = value;
  }
}