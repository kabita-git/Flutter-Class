import 'package:flutter/material.dart';
import 'package:kusoed_demo_app/core/constants.dart';
import 'package:kusoed_demo_app/features/courses/pages/course_details_page.dart';
import 'package:kusoed_demo_app/features/courses/models/courses.dart';

class CourseTile extends StatelessWidget {
  final Course course;
  final VoidCallback? onTap;

  const CourseTile({super.key, required this.course, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => CourseDetailsPage(course: course),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.secondarySky,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      course.code,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        color: AppColors.secondaryNight,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '${course.creditHours} Credits',
                    style: const TextStyle(
                      color: AppColors.greyShade1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                course.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.greyDark,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Instructor: ${course.instructor}',
                style: const TextStyle(color: AppColors.greyShade1),
              ),
              const SizedBox(height: 4),
              Text(
                course.schedule,
                style: const TextStyle(color: AppColors.greyShade1),
              ),
              const SizedBox(height: 12),
              Text(
                course.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: AppColors.greyDark),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
