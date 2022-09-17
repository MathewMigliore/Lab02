main() {
  
  int bottomOfRange = 0;
  
  int topOfRange = 30;
  
  List<double> grades = [1, 2, 3, 4, 6, 8, 10, 16, 32];
  
  var gradesInRange = grades.map((value) => value >= bottomOfRange && value <= topOfRange);
  
  print(gradesInRange.toString());
  
  bottomOfRange+=2;
  topOfRange+=2;
  
  gradesInRange = grades.map((value) => value >= bottomOfRange && value <= topOfRange);
  
  print(gradesInRange.toString());
  
  
  List<int> students = [1, 2, 3, 4, 5, 6];
  List<Student> studentsS = [];
  
  students.asMap().forEach((index, value) => studentsS.add(Student(sid: "100000000$value", name: "Student #$value")));
  
  studentsS.asMap().forEach((index, value) => print(value.toString()));
  
  
}


class Student{
  String? sid;
  String? name;
  
  Student( {this.sid, this.name}  ){
    
    print("New Student with ID $sid and name $name");
  }
  
  
  String toString(){
    return "SID: $sid, Name: $name";
  }
  
}
