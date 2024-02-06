

 import 'package:flutter/material.dart';
  var _userBRANDController = TextEditingController();
   var _userPRICEController = TextEditingController();
   var _userDescriptionController = TextEditingController();
    var _userimageurlController = TextEditingController();

TextButton clearbutton() {
    return TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                        textStyle: const TextStyle(fontSize: 15)),
                    onPressed: (){
                        _userBRANDController.text = '';
                    _userPRICEController.text = '';
                    _userDescriptionController.text = '';
                    _userimageurlController.text='';

                    },
                    child: const Text('Clear Details'));
  }

 