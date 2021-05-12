class User {
  String _id;
  String _name;
  String _password;

  User(this._id, this._name, this._password);

  String get id => _id;
  String get name => _name;
  String get password => _password;
}
