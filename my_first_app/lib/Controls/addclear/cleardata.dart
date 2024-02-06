
  import 'package:flutter/material.dart';


 var _userBRANDController = TextEditingController();
  var _userPRICEController = TextEditingController();
  var _userDescriptionController = TextEditingController();
   var _userimageurlController = TextEditingController();

   
 
    clearFunction() {
                      _userBRANDController.text = '';
                      _userPRICEController.text = '';
                      _userDescriptionController.text = '';
                      _userimageurlController.text='';

          
                    }