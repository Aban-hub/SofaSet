class EntryStepsModel {
  String _stepName;
  String _status;

  EntryStepsModel(this._stepName, this._status);

  String get getStatus => _status;

  set status(String status) {
    _status = status;
  }

  String get getStepName => _stepName;

  set stepsName(String stepName) {
    this._stepName = stepName;
  }
}
