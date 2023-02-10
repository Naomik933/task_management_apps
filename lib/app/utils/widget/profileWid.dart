import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/app/data/controller/auth_controller.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class ProfileWid extends StatelessWidget {
  final authConn = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone
          ? Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 150,
                      foregroundImage:
                          NetworkImage(authConn.auth.currentUser!.photoURL!),
                    ),
                  ),
                ),
                // SizedBox(width: 20,),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        authConn.auth.currentUser!.displayName!,
                        style: const TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        authConn.auth.currentUser!.email!,
                        style: const TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 140,
                      foregroundImage:
                          NetworkImage(authConn.auth.currentUser!.photoURL!),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    authConn.auth.currentUser!.displayName!,
                    style: const TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    authConn.auth.currentUser!.email!,
                    style: const TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
