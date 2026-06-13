class Person {
  String name;
  int age;
  String job;

  // Constructor
  Person({required this.name, required this.age, required this.job});
}

List<Person> people = [
  Person(name: "สมชาย", age: 30, job: "นักพัฒนา"),
  Person(name: "สมศรี", age: 28, job: "นักออกแบบ"),
  Person(name: "สมปอง", age: 35, job: "ผู้จัดการ"),
  Person(name: "สมหมาย", age: 40, job: "นักธุรกิจ"),
  Person(name: "สมจิตร", age: 25, job: "นักศึกษา"),
];
