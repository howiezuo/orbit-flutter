import 'package:flutter/material.dart';

import '../theme.dart';

/**
 * disabled
 */
class InputField extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final bool inlineLable;
  final String? placeholder;
  final IconData? icon;
  // TODO better naming?
  final InputFieldState state;

  InputField({
    Key? key,
    this.controller,
    this.label,
    this.inlineLable = false,
    this.placeholder,
    this.icon,
    InputFieldState? state,
  })  : this.state = state ?? InputFieldStateNormal(),
        super(key: key);

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
    final formStyles = FormTokens.fromDefault(context);
    final iconStyles = IconTokens.fromDefalut(context);

    Color resolveBorderColor() {
      if (widget.state is InputFieldStateError)
        return _isFocused
            ? style.borderColorErrorFocus
            : style.borderColorError;

      if (widget.state is InputFieldStateHelp) return style.borderColorFocus;

      return _isFocused ? style.borderColorFocus : style.borderColor;
    }

    final borderColor = resolveBorderColor();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null && !widget.inlineLable)
          Padding(
            padding: EdgeInsets.only(bottom: theme.spaceTokens.xXsmall),
            child: Text(
              widget.label!,
              style: TextStyle(
                color: formStyles.colorLabel,
                fontSize: formStyles.fontSizeLabel,
                height: theme.typographyTokens.lineHeightTextSmall /
                    formStyles.fontSizeLabel,
              ),
            ),
          ),
        Container(
          // height: style.heightNormal,
          padding: style.paddingNormal,
          decoration: BoxDecoration(
            color: style.background,
            border: Border.all(
              color: borderColor,
              width: style.borderWidth,
            ),
            borderRadius: BorderRadius.all(theme.borderRadiusTokens.normal),
          ),
          child: Row(
            children: [
              if (widget.icon != null)
                Padding(
                  padding: EdgeInsets.only(right: theme.spaceTokens.small),
                  child: Icon(
                    widget.icon!,
                    color: style.colorIcon,
                    size: iconStyles.sizeMedium,
                  ),
                ),
              if (widget.label != null && widget.inlineLable)
                Padding(
                  padding: EdgeInsets.only(right: theme.spaceTokens.small),
                  child: Text(
                    widget.label!,
                    style: TextStyle(
                      color: formStyles.colorLabel,
                      fontSize: style.fontSizeNormal,
                    ),
                  ),
                ),
              Expanded(
                child: TextField(
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
                ),
              ),
            ],
          ),
        ),
        if (widget.state is! InputFieldStateNormal)
          Padding(
            padding: EdgeInsets.only(top: theme.spaceTokens.xXsmall),
            child: _message(context),
          ),
      ],
    );
  }

  Widget _message(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final style = InputTokens.fromDefault(context);
    final iconStyles = IconTokens.fromDefalut(context);

    if (widget.state is InputFieldStateError) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            OrbitIcons.alert_circle,
            color: style.borderColorErrorFocus,
            size: iconStyles.sizeSmall,
          ),
          SizedBox(width: theme.spaceTokens.xXsmall),
          Text(
            widget.state.message!,
            style: TextStyle(color: style.borderColorErrorFocus),
          ),
        ],
      );
    } else {
      return Row(
        children: [
          Icon(
            OrbitIcons.information_circle,
            color: style.borderColorFocus,
            size: iconStyles.sizeSmall,
          ),
          SizedBox(width: theme.spaceTokens.xXsmall),
          Text(
            widget.state.message!,
            style: TextStyle(color: style.borderColorFocus),
          ),
        ],
      );
    }
  }
}

abstract class InputFieldState {
  String? get message;
}

class InputFieldStateNormal extends InputFieldState {
  @override
  final String? message = null;
}

class InputFieldStateHelp extends InputFieldState {
  @override
  final String message;

  InputFieldStateHelp({required this.message});
}

class InputFieldStateError extends InputFieldState {
  @override
  final String message;

  InputFieldStateError({required this.message});
}
