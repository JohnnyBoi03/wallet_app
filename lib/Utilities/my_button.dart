import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButton({super.key,
  required this.buttonText,
  required this.iconImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    //icon
                    Container(
                      height: 90,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(21),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 20,
                            spreadRadius: 10
                          ),
                        ],
                      ),
                      child: Center(
                        child: Image.asset(iconImagePath),
                      ),
                    ),
                    //text
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      buttonText,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700]),
                    ),
                  ],
                );
  }
}