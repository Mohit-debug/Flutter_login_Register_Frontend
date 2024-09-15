import 'package:flutter/material.dart';
import 'login_page.dart'; 
import 'register_page.dart'; 

class ToggleButtonWrapper extends StatefulWidget {
  final bool isLoginPage;
  ToggleButtonWrapper({required this.isLoginPage});

  @override
  _ToggleButtonWrapperState createState() => _ToggleButtonWrapperState();
}

class _ToggleButtonWrapperState extends State<ToggleButtonWrapper> {
  List<bool> isSelected = [true, false];

  @override
  void initState() {
    super.initState();
    if (!widget.isLoginPage) {
      isSelected = [false, true]; 
    }
  }

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.75;

    return Container(
      width: containerWidth,
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade300, 
        borderRadius: BorderRadius.circular(45), 
      ),
      child: ToggleButtons(
        borderRadius: BorderRadius.circular(45), 
        isSelected: isSelected,
        selectedColor: Colors.blue, 
        fillColor: Colors.transparent, 
        borderWidth: 0, 
        renderBorder: false, 
        children: [
          Container(
            width: containerWidth * 0.5 - 4,
            height: 50, 
            decoration: BoxDecoration(
              color: isSelected[0] ? Colors.white : Colors.grey.shade300, 
              borderRadius: BorderRadius.circular(45),
            ),
            alignment: Alignment.center, 
            child: Text('Login'),
          ),
          Container(
            width: containerWidth * 0.5 - 4,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            height: 50, 
            decoration: BoxDecoration(
              color: isSelected[1] ? Colors.white : Colors.grey.shade300, 
              borderRadius: BorderRadius.circular(45),
            ),
            alignment: Alignment.center, 
            child: Text('Register'),
          ),
        ],
        onPressed: (int index) {
          setState(() {
            for (int i = 0; i < isSelected.length; i++) {
              isSelected[i] = i == index;
            }
          });
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => RegisterPage()),
            );
          }
        },
      ),
    );
  }
}
