// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, overridden_fields
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/utils.dart';
import '../utils/validators.dart';

class BookAddScreen extends StatefulWidget  {
  static const routeName = "/book/add";
  BookAddScreen({Key? key}) : super(key: key);

  @override
  State<BookAddScreen> createState() => _BookAddScreenState();
}

class _BookAddScreenState extends State<BookAddScreen> with Validators{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Add Book'), actions: [
          InkWell(
            child: Icon(
              Icons.save_alt,
            ),
            onTap: () {
              if(_formKey.currentState!.validate()){
                toast(context,'Book Saved');
                _formKey.currentState!.save();
                print('book saved');
              } else{
                toast(context,'Validation Errors',backgroundColor:Theme.of(context).colorScheme.error);
              }
            },
          ),
        ]),
        body: Form(
          key:_formKey,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                   TextFormField(
                    decoration: InputDecoration(
                      label: Text('Book Id'),
                    ),
                    validator: validate([isRequired(),stringLength(2,10)]),
                    
                    onSaved: (value){
                        
                    },
                  ),
                  
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('Book Title'),
                    ),
                    validator: validate([isRequired(errorMessage: 'Book Title is Required'),stringLength(2,10)]),
                    
                    onSaved: (value){
                        
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('Book Author'),
                    ),
                    validator: validate([isRequired()]),
                    onSaved: (value){
                        print('author saved as $value');
                    },
                    
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('Book ISBN'),
                    ),
                    validator: validate([isRequired()]),
                    onSaved: (value){
                        
                    },
                    
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('Book Price'),
                    ),
                    keyboardType: TextInputType.number,
                    validator: validate([isRequired(),isNumber(),isInInclusiveRange(0,5000)]),
                    onSaved: (value){
                        
                    },
                    
                  ),
                  
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('Book Rating'),
                    ),
                    keyboardType: TextInputType.number,
                    validator: validate([isRequired(),isNumber(),isInInclusiveRange(1,5)]),
                    onSaved: (value){
                        
                    },
                    
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('Book Cover'),
                    ),
                    validator: validate([isRequired()]),
                    
                    onSaved: (value){
                        
                    },
                    
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('Book Descriptions'),
                    ),
                    validator: validate([isRequired()]),
                    keyboardType: TextInputType.multiline,
                    maxLines: 2,
                    onSaved: (value){
                        
                    },
                    
                  ),
                  
                  

                ],
              ),
            ),
          ),
        ),
        //resizeToAvoidBottomInset: true,
        );
  }
}
