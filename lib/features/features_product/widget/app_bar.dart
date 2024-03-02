import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/face.jpg"),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Hey,Hossein",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.notifications_active_outlined,
                size: 30,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.search,
                size: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
