import 'package:xml/xml.dart' as xml;
import 'package:xml_api_integration_in_flutter/model/student_model.dart';
class StudentUtils {

  static final dataList = [];
  static const studentXml = '''<?xml version="1.0"?>
  <students>
    <std>
      <name>Muhammad Javed</name>
      <attendance>95</attendance>
      <profession>Flutter Developer</profession>
    </std>
     <std>
      <name>Muhammad Abdullah</name>
      <attendance>80</attendance>
      <profession>Graphics Designer</profession>
    </std>
    <std>
      <name>Muhammad Amad Ali</name>
      <attendance>85</attendance>
      <profession>UI UX Designer</profession>
    </std>
    <std>
      <name>Naeem Akram</name>
      <attendance>75</attendance>
      <profession>Database Administrator</profession>
    </std>
    <std>
      <name>Mobeen Arshad</name>
      <attendance>70</attendance>
      <profession>Senior Flutter Developer</profession>
    </std>
    <std>
      <name>Rehab Zafar</name>
      <attendance>65</attendance>
      <profession>Senior Laravel Developer</profession>
    </std>
    <std>
      <name>Tabraiz Faisal</name>
      <attendance>65</attendance>
      <profession>Business Analytics</profession>
    </std>
    <std>
      <name>Sajid Ali</name>
      <attendance>60</attendance>
      <profession>Laravel Developer</profession>
    </std>
  </students>''';

  static void getStudentRecord(){
    final document = xml.XmlDocument.parse(studentXml);
    final studentsNode = document.findElements('students').first;
    final stds = studentsNode.findElements('std');
    for(final student in stds){
      final name = student.findElements('name').first.text;
      final attendance = student.findElements('attendance').first.text;
      final profession = student.findElements('profession').first.text;
      final model = StudentModel(name: name, attendance: attendance, profession: profession);
      dataList.add(model.toMap());
    }
  }


}