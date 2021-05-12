class Patient {
  String _patientId;
  String _photo;
  String _name;
  String _lastName;
  String _birthDate;
  int _age;
  String _adress;
  String _neighborhood;
  int _phoneNumber;
  String _city;
  bool _state;

  Patient(
    this._patientId,
    this._photo,
    this._name,
    this._lastName,
    this._birthDate,
    this._age,
    this._adress,
    this._neighborhood,
    this._phoneNumber,
    this._city,
    this._state,
  );

  Patient.map(dynamic obj) {
    this._photo = obj['picture'];
    this._name = obj['name'];
    this._lastName = obj['lastName'];
    this._birthDate = obj['birthDate'];
    this._age = obj['age'];
    this._adress = obj['adress'];
    this._neighborhood = obj['neighbordhood'];
    this._phoneNumber = obj['phoneNumber'];
    this._city = obj['city'];
    this._state = obj['state'];
  }

  String get patientId => _patientId;
  String get photo => _photo;
  String get name => _name;
  String get lastName => _lastName;
  String get birthDate => _birthDate;
  int get age => _age;
  String get adress => _adress;
  String get neightbordhood => _neighborhood;
  int get phoneNumber => _phoneNumber;
  String get city => _city;
  bool get state => _state;
}
