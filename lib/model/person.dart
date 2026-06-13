import 'package:flutter/material.dart';

enum Job {
  developer(
    title: "นักพัฒนา",
    description: "ทำงานเกี่ยวกับการพัฒนาแอปพลิเคชันและซอฟต์แวร์",
    image: "assets/images/flower.jpg",
    color: Colors.pinkAccent,
  ),
  designer(
    title: "นักออกแบบ",
    description: "ทำงานเกี่ยวกับการออกแบบอินเตอร์เฟซและประสบการณ์ผู้ใช้",
    image: "assets/images/flower.jpg",
    color: Colors.blueAccent,
  ),
  manager(
    title: "ผู้จัดการ",
    description: "บริหารจัดการทีมและโครงการ",
    image: "assets/images/flower.jpg",
    color: Colors.greenAccent,
  ),
  businessman(
    title: "นักธุรกิจ",
    description: "ดำเนินธุรกิจและสร้างโอกาสทางการค้า",
    image: "assets/images/flower.jpg",
    color: Colors.orangeAccent,
  ),
  student(
    title: "นักศึกษา",
    description: "เรียนรู้และพัฒนาทักษะใหม่ๆ",
    image: "assets/images/flower.jpg",
    color: Colors.purpleAccent,
  );

  const Job({
    required this.title,
    required this.description,
    required this.image,
    required this.color,
  });

  final String title;
  final String description;
  final String image;
  final Color color;
}

class Person {
  String name;
  int age;
  Job job;

  // Constructor
  Person({required this.name, required this.age, required this.job});
}

List<Person> people = [
  Person(name: "สมชาย", age: 30, job: Job.developer),
  Person(name: "สมศรี", age: 28, job: Job.designer),
  Person(name: "สมปอง", age: 35, job: Job.manager),
  Person(name: "สมหมาย", age: 40, job: Job.businessman),
  Person(name: "สมจิตร", age: 25, job: Job.student),
];
