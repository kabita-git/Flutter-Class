import 'package:flutter/material.dart';
import 'package:kusoed_demo_app/core/constants.dart';
import 'package:kusoed_demo_app/features/courses/data/course_data.dart';

class CoursesHeaderCard extends StatelessWidget {
  const CoursesHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.primaryBlue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'Available Courses',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.greyDark,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Explore course offerings and open a course to view full details.',
              style: TextStyle(color: AppColors.greyShade1),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.primaryBlue.withValues(alpha: 20),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '${courses.length} Total Courses',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.secondaryNight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
