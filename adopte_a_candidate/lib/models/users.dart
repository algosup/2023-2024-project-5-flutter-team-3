
class UserModel {

  final String? ID;
  final String LANGUAGE;
  final String MAIL;
  final String NAME;
  final String PASSWORD;
  final bool isCompany;




  UserModel({
  this.ID, required this.LANGUAGE, required this.MAIL, required this.NAME,
  required this.PASSWORD, required this.isCompany,});

  toJson() {
    return {
      "ID": ID,
      "LANGUAGE": LANGUAGE,
      "MAIL": MAIL,
      "NAME": NAME,
      "PASSWORD": PASSWORD,
      "isCompany": isCompany,
    };
  }
}


