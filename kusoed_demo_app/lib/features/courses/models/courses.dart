class Course {
  final String code;
  final String title;
  final String instructor;
  final String schedule;
  final String location;
  final int creditHours;
  final String description;
  final List<String> objectives;
  final List<String> prerequisites;
  final List<String> resources;

  const Course({
    required this.code,
    required this.title,
    required this.instructor,
    required this.schedule,
    required this.location,
    required this.creditHours,
    required this.description,
    required this.objectives,
    required this.prerequisites,
    required this.resources,
  });
}