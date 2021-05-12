class Appoiment {
  int _appoimentId;
  String _appoimentState;
  DateTime _dateService;
  String _description;
  String _careStaffId;
  String _patientId;

  Appoiment(
    this._appoimentId,
    this._appoimentState,
    this._dateService,
    this._description,
    this._careStaffId,
    this._patientId,
  );

  int get appoimentId => _appoimentId;
  String get appoimentState => _appoimentState;
  DateTime get dateService => _dateService;
  String get description => _description;
  String get careStaffId => _careStaffId;
  String get patientId => _patientId;
}
