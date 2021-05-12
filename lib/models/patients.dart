class Patient {
  String _code;
  String _picture;
  String _fullName;
  String _birthDate;
  int _age;
  String _adress;
  String _neighborhood;
  int _phone;
  String _city;
  bool _status;

  Patient(
    this._code, 
    this._picture, 
    this._fullName,
    this._birthDate, 
    this._age, 
    this._adress, 
    this._neighborhood, 
    this._phone, 
    this._city, 
    this._status,
  );

  Patient.map(dynamic obj) {
    this._picture = obj['picture']; 
    this._fullName = obj['fullName'];
    this._birthDate = obj['birthDate'];
    this._age = obj['age']; 
    this._adress = obj['adress'];
    this._neighborhood = obj['neighbordhood']; 
    this._phone = obj['phone']; 
    this._city = obj['city'];
    this._status = obj['status'];
  }

  String get code => _code;
  String get picture => _picture;
  String get fullName => _fullName;
  String get birthDate => _birthDate;
  int get age => _age;
  String get adress => _adress;
  String get neightbordhood => _neighborhood;
  int get phone => _phone;
  String get city => _city;
  bool get status => _status;
}