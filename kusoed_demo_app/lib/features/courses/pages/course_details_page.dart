import 'package:flutter/material.dart';
import 'package:kusoed_demo_app/core/constants.dart';
import 'package:kusoed_demo_app/features/courses/widgets/course_summry_card.dart';
import 'package:kusoed_demo_app/features/courses/widgets/course_common_widgets.dart';
import 'package:kusoed_demo_app/features/courses/models/courses.dart';

class CourseDetailsPage extends StatelessWidget {
  final Course course;

  const CourseDetailsPage({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralSteam,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBlue,
        foregroundColor: Colors.white,
        title: Text(course.code),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: AppColors.greyDark,
                    ),
                  ),
                  const SizedBox(height: 10),
                  MetaRow(
                    icon: Icons.person,
                    label: course.instructor,
                  ),
                  const SizedBox(height: 6),
                  MetaRow(
                    icon: Icons.schedule,
                    label: course.schedule,
                  ),
                  const SizedBox(height: 6),
                  MetaRow(
                    icon: Icons.location_on,
                    label: course.location,
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.secondarySky,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '${course.creditHours} Credit Hours',
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppColors.secondaryNight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 18),
          Section(
            title: 'Overview',
            child: Text(
              course.description,
              style: const TextStyle(color: AppColors.greyDark, height: 1.4),
            ),
          ),
          Section(
            title: 'Learning Objectives',
            child: BulletedList(items: course.objectives),
          ),
          Section(
            title: 'Prerequisites',
            child: BulletedList(items: course.prerequisites),
          ),
          Section(
            title: 'Resources',
            child: BulletedList(items: course.resources),
          ),
        ],
      ),
    );
  }
}
