import 'package:flutter/material.dart';

import '../theme.dart';

class InputField extends StatefulWidget {
  final TextEditingController? controller;
  final String? placeholder;

  const InputField({
    Key? key,
    this.controller,
    this.placeholder,
  }) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final _focus = new FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focus.addListener(() {
      setState(() {
        _isFocused = _focus.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final style = InputTokens.fromDefault(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Label'),
        Container(
          // height: style.heightNormal,
          padding: style.paddingNormal,
          decoration: BoxDecoration(
            color: style.background,
            border: Border.all(
              color: _isFocused ? style.borderColorFocus : style.background,
              width: style.borderWidth,
            ),
            borderRadius: BorderRadius.all(theme.borderRadiusTokens.normal),
          ),
          child: Column(
            children: [
              TextField(
                controller: widget.controller,
                focusNode: _focus,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.all(0),
                  hintText: widget.placeholder,
                  hintStyle: TextStyle(
                    color: style.colorPlaceholder,
                    fontSize: style.fontSizeNormal,
                    fontWeight: theme.typographyTokens.fontWeightNormal,
                  ),
                ),
                style: TextStyle(
                  color: style.colorText,
                  fontSize: style.fontSizeNormal,
                  fontWeight: theme.typographyTokens.fontWeightNormal,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
