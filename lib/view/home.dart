import 'package:flutter/material.dart';
import 'package:xml_api_integration_in_flutter/model/student_model.dart';
import 'package:xml_api_integration_in_flutter/provider/student.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    StudentUtils.getStudentRecord();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemBuilder: (context, index){
            final data = StudentModel.fromDocument(StudentUtils.dataList[index]);
            return Card(
              key: ValueKey(data.name),
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              color: Theme.of(context).primaryColor,
              elevation: 2,
              child: ListTile(
                title: Text(data.name, style: Theme.of(context).textTheme.bodyLarge),
                subtitle: Text("Attendance: ${data.attendance}%", style: Theme.of(context).textTheme.bodySmall),
              ),
            );
          },
          itemCount: StudentUtils.dataList.length,
        ),
      ),
    );
  }
}
