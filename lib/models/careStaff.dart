class CareStaff {
  String _careStaffId;
  String _photo;
  String _name;
  String _lastName;
  String _job;
  String _state;
  String _turn;
  String _password;

  CareStaff(
    this._careStaffId,
    this._photo,
    this._name,
    this._lastName,
    this._job,
    this._state,
    this._turn,
    this._password,
  );

  String get careStaffId => _careStaffId;
  String get photo => _photo;
  String get name => _name;
  String get lastName => _lastName;
  String get job => _job;
  String get state => _state;
  String get turn => _turn;
  String get password => _password;
}
