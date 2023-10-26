class StudentModel{
  final String name;
  final String attendance;
  final String profession;
  StudentModel({required this.name, required this.attendance,required this.profession, });


  factory StudentModel.fromDocument(Map<String,dynamic> doc){
    return StudentModel(
      name: doc['name'],
      attendance: doc['attendance'],
      profession: doc['profession'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'attendance': attendance,
      'profession': profession,
  };
}

}