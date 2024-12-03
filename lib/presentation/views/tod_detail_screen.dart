import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/constants/constant_imports.dart';

class TodoDetailScreen extends StatelessWidget {
  TodoDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments;
    final title = arguments['title']; // the title of the todo
    final description = arguments['description']; // the description of the todo
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: AppBar(
        title: const Text('Detail Screen'),
        backgroundColor: AppColors.secondary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.paddingSmall),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
