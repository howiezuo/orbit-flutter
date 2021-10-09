import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orbit/src/components/form_label.dart';

import '../theme.dart';

/// TODO shadow
class InputField extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final bool readOnly;
  final ToolbarOptions? toolbarOptions;
  final bool autofocus;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
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
  final DragStartBehavior dragStartBehavior;
  final bool enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final GestureTapCallback? onTap;
  final MouseCursor? mouseCursor;
  final ScrollController? scrollController;
  final ScrollPhysics? scrollPhysics;
  final Iterable<String>? autofillHints;
  final String? restorationId;
  final bool enableIMEPersonalizedLearning;

  final String? label;
  final bool compactLable;
  final String? placeholder;
  final IconData? icon;
  // TODO better naming?
  final InputFieldState state;
  final bool disabled;

  InputField({
    Key? key,
    this.controller,
    FocusNode? focusNode,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.readOnly = false,
    this.toolbarOptions,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
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
    // cusotmized from there
    this.label,
    this.compactLable = false,
    this.placeholder,
    this.icon,
    this.disabled = false,
    InputFieldState? state,
  })  : this.state = state ?? InputFieldStateNormal(),
        this.focusNode = focusNode ?? FocusNode(),
        super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _isFocused = false;
  bool _isFilled = false;
  late ValueChanged<String> _onChanged;

  @override
  void initState() {
    super.initState();
    widget.focusNode!.addListener(() {
      setState(() => _isFocused = widget.focusNode!.hasFocus);
    });
    _onChanged = (value) {
      setState(() => _isFilled = value.isNotEmpty);
      widget.onChanged?.call(value);
    };
  }

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final baseTokens = theme.baseTokens;
    final defaultStyle = _fromTheme(context);
    final inputTokens = InputTokens.fromDefault(context);
    final borderRadiusTokens = BorderRadiusTokens.fromDefault(context);

    Color resolveBorderColor() {
      if (widget.state is InputFieldStateError)
        return _isFocused
            ? inputTokens.borderColorErrorFocus!
            : inputTokens.borderColorError!;

      if (widget.state is InputFieldStateHelp)
        return inputTokens.borderColorFocus!;

      return _isFocused
          ? inputTokens.borderColorFocus!
          : inputTokens.borderColor!;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null && !widget.compactLable)
          FormLabel(widget.label!, filled: _isFilled),
        Container(
          height: defaultStyle.height,
          padding: inputTokens.paddingNormal,
          decoration: BoxDecoration(
            color: widget.disabled
                ? inputTokens.backgroundDisabled
                : inputTokens.background,
            border: Border.all(
              color: resolveBorderColor(),
              width: inputTokens.borderWidth!,
            ),
            borderRadius: BorderRadius.all(borderRadiusTokens.normal!),
          ),
          child: Row(
            children: [
              if (widget.icon != null)
                Padding(
                  padding: EdgeInsets.only(right: baseTokens.spaceSmall),
                  child: Icon(
                    widget.icon!,
                    color: inputTokens.colorIcon,
                    size: defaultStyle.iconSize,
                  ),
                ),
              if (widget.label != null && widget.compactLable)
                FormLabel(widget.label!, filled: _isFilled, inline: true),
              Expanded(child: _input(context, theme, defaultStyle)),
            ],
          ),
        ),
        if (widget.state is! InputFieldStateNormal)
          Padding(
            padding: EdgeInsets.only(top: baseTokens.spaceXxsmall),
            child: _message(context),
          ),
      ],
    );
  }

  Widget _input(BuildContext context, OrbitThemeData theme, InputStyle style) {
    final baseTokens = theme.baseTokens;
    final inputTokens = InputTokens.fromDefault(context);

    return TextField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      textCapitalization: widget.textCapitalization,
      readOnly: widget.readOnly,
      toolbarOptions: widget.toolbarOptions,
      autofocus: widget.autofocus,
      obscuringCharacter: widget.obscuringCharacter,
      obscureText: widget.obscureText,
      autocorrect: widget.autocorrect,
      smartDashesType: widget.smartDashesType,
      smartQuotesType: widget.smartQuotesType,
      enableSuggestions: widget.enableSuggestions,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      expands: widget.expands,
      maxLength: widget.maxLength,
      maxLengthEnforcement: widget.maxLengthEnforcement,
      onChanged: _onChanged,
      onEditingComplete: widget.onEditingComplete,
      onSubmitted: widget.onSubmitted,
      onAppPrivateCommand: widget.onAppPrivateCommand,
      inputFormatters: widget.inputFormatters,
      keyboardAppearance: widget.keyboardAppearance,
      dragStartBehavior: widget.dragStartBehavior,
      enableInteractiveSelection: widget.enableInteractiveSelection,
      selectionControls: widget.selectionControls,
      onTap: widget.onTap,
      mouseCursor: widget.mouseCursor,
      scrollController: widget.scrollController,
      scrollPhysics: widget.scrollPhysics,
      autofillHints: widget.autofillHints,
      restorationId: widget.restorationId,
      enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
      // customized from here
      cursorColor: inputTokens.colorText,
      enabled: !widget.disabled,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide.none),
        isDense: true,
        contentPadding: EdgeInsets.zero,
        disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
        hintText: widget.placeholder,
        hintStyle: TextStyle(
          color: inputTokens.colorPlaceholder,
          fontSize: inputTokens.fontSizeNormal,
          fontWeight: baseTokens.fontWeightNormal,
        ),
      ),
      style: TextStyle(
        color: widget.disabled
            ? inputTokens.colorTextDisabled
            : inputTokens.colorText,
        fontSize: style.fontSize,
        fontWeight: baseTokens.fontWeightNormal,
      ),
    );
  }

  Widget _message(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final baseTokens = theme.baseTokens;
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
          SizedBox(width: baseTokens.spaceXxsmall),
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
          SizedBox(width: baseTokens.spaceXxsmall),
          Text(
            widget.state.message!,
            style: TextStyle(color: style.borderColorFocus),
          ),
        ],
      );
    }
  }

  InputStyle _fromTheme(BuildContext context) {
    final defaultStyle = InputTokens.fromDefault(context);
    final iconTokens = IconTokens.fromDefault(context);

    return InputStyle.raw(
      height: defaultStyle.heightNormal!,
      fontSize: defaultStyle.fontSizeNormal!,
      padding: defaultStyle.paddingNormal!,
      iconSize: iconTokens.sizeMedium!,
    );
  }
}

class InputStyle {
  final double? height;
  final double? fontSize;
  final EdgeInsets? padding;
  final double? iconSize;

  const InputStyle({
    this.height,
    this.fontSize,
    this.padding,
    this.iconSize,
  });

  const InputStyle.raw({
    required double this.height,
    required double this.fontSize,
    required EdgeInsets this.padding,
    required double this.iconSize,
  });
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
