import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme.dart';

/**
 * disabled
 */
class InputField extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final bool autofocus;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final AppPrivateCommandCallback? onAppPrivateCommand;
  final List<TextInputFormatter>? inputFormatters;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final DragStartBehavior dragStartBehavior;
  bool get selectionEnabled => enableInteractiveSelection;
  final GestureTapCallback? onTap;
  final MouseCursor? mouseCursor;
  final ScrollPhysics? scrollPhysics;
  final ScrollController? scrollController;
  final Iterable<String>? autofillHints;
  final String? restorationId;
  final bool enableIMEPersonalizedLearning;

  final String? label;
  final bool inlineLable;
  final String? placeholder;
  final IconData? icon;
  // TODO better naming?
  final InputFieldState state;

  InputField({
    Key? key,
    this.controller,
    FocusNode? focusNode,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onAppPrivateCommand,
    this.inputFormatters,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableInteractiveSelection = true,
    this.selectionControls,
    this.onTap,
    this.mouseCursor,
    this.scrollController,
    this.scrollPhysics,
    this.autofillHints,
    this.restorationId,
    this.enableIMEPersonalizedLearning = true,
    this.label,
    this.inlineLable = false,
    this.placeholder,
    this.icon,
    InputFieldState? state,
  })  : this.state = state ?? InputFieldStateNormal(),
        this.focusNode = focusNode ?? FocusNode(),
        super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    widget.focusNode!.addListener(() {
      setState(() {
        _isFocused = widget.focusNode!.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final style = InputTokens.fromDefault(context);
    final formStyles = FormTokens.fromDefault(context);
    final iconStyles = IconTokens.fromDefault(context);

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
                fontWeight: theme.typographyTokens.fontWeightMedium,
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
            borderRadius: BorderRadius.all(theme.baseTokens.borderRadius),
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
                  focusNode: widget.focusNode,
                  keyboardType: widget.keyboardType,
                  textInputAction: widget.textInputAction,
                  textCapitalization: widget.textCapitalization,
                  autofocus: widget.autofocus,
                  obscuringCharacter: widget.obscuringCharacter,
                  obscureText: widget.obscureText,
                  autocorrect: widget.autocorrect,
                  maxLines: widget.maxLines,
                  minLines: widget.minLines,
                  expands: widget.expands,
                  maxLength: widget.maxLength,
                  keyboardAppearance: widget.keyboardAppearance,
                  scrollPadding: widget.scrollPadding,
                  dragStartBehavior: widget.dragStartBehavior,
                  enableInteractiveSelection: widget.enableInteractiveSelection,
                  selectionControls: widget.selectionControls,
                  onTap: widget.onTap,
                  mouseCursor: widget.mouseCursor,
                  scrollPhysics: widget.scrollPhysics,
                  scrollController: widget.scrollController,
                  autofillHints: widget.autofillHints,
                  restorationId: widget.restorationId,
                  enableIMEPersonalizedLearning:
                      widget.enableIMEPersonalizedLearning,
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
    final iconStyles = IconTokens.fromDefault(context);

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
