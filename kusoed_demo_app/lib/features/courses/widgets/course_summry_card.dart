import 'package:flutter/material.dart';
import 'package:kusoed_demo_app/core/constants.dart';

class BulletedList extends StatelessWidget {
  final List<String> items;

  const BulletedList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('•  ', style: TextStyle(color: AppColors.greyDark)),
                  Expanded(
                    child: Text(
                      item,
                      style: const TextStyle(color: AppColors.greyDark),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}

class MetaRow extends StatelessWidget {
  final IconData icon;
  final String label;

  const MetaRow({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: AppColors.greyShade1),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(color: AppColors.greyShade1),
          ),
        ),
      ],
    );
  }
}