import 'package:flutter/material.dart';
import 'package:kusoed_demo_app/features/courses/data/course_data.dart';
import 'package:kusoed_demo_app/features/courses/pages/course_details_page.dart';
import 'package:kusoed_demo_app/features/courses/widgets/course_tile.dart';
import "package:kusoed_demo_app/features/courses/widgets/courses_header_card_.dart";


class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: courses.length + 1,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        if (index == 0) {
          return const CoursesHeaderCard();
        }

        final course = courses[index - 1];
        return CourseTile(
          course: course,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => CourseDetailsPage(course: course),
              ),
            );
          },
        );
      },
    );
  }
}


