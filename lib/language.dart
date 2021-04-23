// ignore: camel_case_types
class language{
  final int id;
  final String name;
  final String flag;
  final String languageCode;



  language(this.id, this.name, this.flag, this.languageCode);

  // ignore: non_constant_identifier_names
  static List<language> LanguageList(){

    return <language>[
      language(1, 'English','🇺🇸','en-US	'),
      language(2,'Arabic','🇸🇦','ar-SA	'),
    ];


  }

}

