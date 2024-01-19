

import 'package:flutter/material.dart';
import 'package:my_first_app/Service/userService.dart';
import 'package:my_first_app/add_user/user.dart';
import 'package:my_first_app/operations/on_press_opreration.dart';
import 'package:my_first_app/screens/home.dart';

class Adduser extends StatefulWidget {
  const Adduser({Key? key}):super(key: key);

  @override
  State<Adduser> createState() => _AdduserState();
}

class _AdduserState extends State<Adduser> {
   var _userBRANDController = TextEditingController();
  var _userPRICEController = TextEditingController();
  var _userDescriptionController = TextEditingController();
   bool _validateBRAND = false;
  bool _validatePRICE = false;
  bool _validateDescription = false;
  var _userSevice=UserService();

  _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
  @override


  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,

      
      title: Center(
        child: Text('ADD PRODUCT',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800
        ),
        
          
        ),
      )
    
      ),
       body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Add NEW PRODUCT',
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w500),
              ),
               SizedBox(
                height: 20.0,
              ),
              TextField(
                 
                 controller: _userBRANDController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter  BRAND Name',
                    labelText: ' BRAND Name',
                    errorText: _validateBRAND ? 'Brand name can\'t be empty':null,
                   
                       
                  ),
                  ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                 
                  controller: _userPRICEController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter PRICE',
                    labelText: 'PRICE',
                     errorText: _validatePRICE ? 'PRICE can\'t be empty':null,
                   
                  )),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                
                  
                   controller: _userDescriptionController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter Description',
                    labelText: 'Description',
                     errorText: _validateDescription ? 'Description can\'t be empty':null,
                   
                  ),
                  ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        
                          backgroundColor: const Color.fromARGB(255, 229, 233, 232),
                          textStyle: const TextStyle(fontSize: 15,
                          color: Colors.black)),
                     
                        onPressed: () async{
                           setState(() {
                          _userBRANDController.text.isEmpty?_validateBRAND = true : _validateBRAND = false; 
                          _userPRICEController.text.isEmpty
                              ? _validatePRICE = true
                              : _validatePRICE = false;
                          _userDescriptionController.text.isEmpty
                              ? _validateDescription = true
                              : _validateDescription = false;

                        });
                        if (_validateBRAND == false &&
                            _validatePRICE == false &&
                            _validateDescription == false) {

                         var _user = User();
                         _user.brand =_userBRANDController.text;
                         _user.price =_userPRICEController.text;
                         _user.description =_userDescriptionController.text;
                         var result=await _userSevice.saveUser(_user);
Navigator.pop(context,result);
                         
                      _showSuccessSnackBar(
                                  ' Detail Updated Success');    
                            }

                          
                        },
                      
                      
                      child: const Text('Save Details',)),
                  const SizedBox(
                    width: 10.0,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.red,
                          textStyle: const TextStyle(fontSize: 15)),
                      onPressed: () {
                       _userBRANDController.text = '';
                        _userPRICEController.text = '';
                        _userDescriptionController.text = '';
                      },
                      child: const Text('Clear Details'))
                ],
              ),
               TextButton(
  onPressed: () {
   RedirectToHomepage(context);
  },
   child: Container(
        width: 180,
        height: 52,
         decoration: BoxDecoration(
            border: Border.all(width: 2,color: Color.fromARGB(255, 0, 0, 0))
          ),
         child: Container(
           child: const Center(
              child: Text("HOME"),
             ),
            
         )
      ),
 ),
            ],
          ),
        ),
      ),
      )
    );
  }
}