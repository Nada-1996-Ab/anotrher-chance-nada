


// ignore: camel_case_types
class registerDN{
  String firstname;
  String lastname;
  String id;
  String phonenumber;
  String email;
  String password;
  String birthday;



  registerDN(this.firstname,this.lastname,this.id,this.phonenumber,this.email,this.password,this.birthday);


  Map<String, dynamic> toMap(){
    return{
      " firstname": this.firstname,
      "lastname" :this.lastname,
      "id": this.id,
      "phonenumber"  : this.phonenumber,
      "email" : this.email,
      "password" : this.password,
      "birthday" : this.birthday,

    };

  }







// registerDN.map(dynamic obj){
// this.firstname = obj['firstname'];
//this.lastname = obj['lastname'];
//this.id = obj['id'];
//this.phonenumber = obj['phonenumber'];
//this.email = obj['email'];
//this.password = obj['password'];
//this.birthday = obj['birthday'];

//}

//String get _firstname => firstname;
//String get _lastname => lastname;
//String get _id => id;
//String get _phonenumber => phonenumber;
//String get _email => email;
//String get _password => password;
//String get _birthday => birthday;


// registerDN.fromSnapShot(DataSnapshot snapShot, this.firstname, this.lastname, this.id, this.phonenumber, this.email, this.password, this.birthday){
// firstname = snapShot.value['firstname'];
//lastname = snapShot.value['lastname'];
//id = snapShot.value['id'];
//phonenumber = snapShot.value['phonenumber'];
//email = snapShot.value['email'];
//password = snapShot.value['password'];
//birthday = snapShot.value['birthday'];


}
//}


