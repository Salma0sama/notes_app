import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,this.maxLines = 1, this.onSaved, this.onChanged});

  final String hint ;
  final int maxLines ;
  final void Function(String?)? onSaved ;
  final void Function(String)? onChanged ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true)
          {
            return 'Field is required';
          }
      },
      cursorColor: kPrimaryColor ,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
          fontSize: 18.5,
            fontWeight: FontWeight.bold,
        ),
        border: builerBorder(),
        enabledBorder: builerBorder(),
        focusedBorder: builerBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder builerBorder([color]){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color ?? Colors.white)
  );
}

}
