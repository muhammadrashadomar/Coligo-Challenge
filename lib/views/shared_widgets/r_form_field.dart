import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RFormField extends StatelessWidget {
  const RFormField({
    Key? key,
    required this.title,
    this.initialValue,
    this.secureText = false,
    this.width = 250,
    this.keyboardType = TextInputType.text,
    this.capitalLetters = TextCapitalization.words,
    // required this.onSave,
    this.onTap,
    this.validate,
    this.formatter,
    this.enabled,
    this.controller,
    this.errorText,
    this.maxLines = 1,
    this.height = 50,
    this.textDirection = TextDirection.ltr,
    this.readOnly = false,
  }) : super(key: key);

  final String title;
  final String? initialValue;
  final TextInputType keyboardType;
  final TextCapitalization capitalLetters;
  final double? width;
  final bool secureText;
  // final Function(String?)? onSave;
  final String? Function(String?)? validate;
  final List<TextInputFormatter>? formatter;
  final Function()? onTap;
  final bool? enabled;
  final TextEditingController? controller;
  final String? errorText;
  final int? maxLines;
  final double height;
  final TextDirection textDirection;
  final bool readOnly;

// //
//   double getFormFieldWidth(BuildContext ctx) {
//     if (width == null) {
//       if (kWebWidth()) {
//         return ((kWidth(ctx) - 200) / 2) - 30;
//       } else {
//         return ((kWidth(ctx) - 60) / 2) - 15;
//       }
//     } else {
//       return width!;
//     }
//   }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        maxLines: maxLines,
        autocorrect: false,

        enableInteractiveSelection: true,
        enableIMEPersonalizedLearning: true,
        enableSuggestions: true,
        obscureText: secureText,
        textCapitalization: capitalLetters,
        keyboardType: keyboardType,
        inputFormatters: formatter,
        textAlignVertical: TextAlignVertical.top,
        style: const TextStyle(fontSize: 16),
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: title,
          hintTextDirection: TextDirection.ltr,
          // contentPadding: const EdgeInsets.all(),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[400],
            size: 25,
          ),
          hintStyle: TextStyle(
            color: Colors.grey[300],
            fontSize: 16,
          ),
          fillColor: Colors.white,
          filled: true,
          // labelText: title,
          errorText: errorText,
          labelStyle: TextStyle(color: Colors.grey[700], fontSize: 20),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(30),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        textInputAction: TextInputAction.next,
        initialValue: initialValue,
        validator: validate,
        // onSaved: onSave,
        onTap: onTap,
        controller: controller,
        textDirection: textDirection,
      ),
    );
  }
}
