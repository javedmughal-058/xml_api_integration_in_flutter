class StudentModel{
  final String name;
  final String attendance;
  StudentModel({required this.name, required this.attendance});


  factory StudentModel.fromDocument(Map<String,dynamic> doc){
    return StudentModel(
      name: doc['name'],
      attendance: doc['attendance'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'attendance': attendance,
  };
}

}