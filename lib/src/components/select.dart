import 'package:flutter/material.dart';

import '../theme.dart';

class Select<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>>? items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final String? label;
  final String? placeholder;
  final Widget? prefix;
  // TODO better naming?
  final SelectState state;

  Select({
    Key? key,
    required this.items,
    this.value,
    this.onChanged,
    this.label,
    this.placeholder,
    this.prefix,
    SelectState? state,
  })  : this.state = state ?? SelectStateNormal(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final inputStyles = InputTokens.fromDefault(context);
    final formStyles = FormTokens.fromDefault(context);

    Color resolveBorderColor() {
      if (state is SelectStateError) return inputStyles.borderColorError;
      if (state is SelectStateHelp) return inputStyles.borderColorFocus;
      return Palette.Transparent;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: EdgeInsets.only(bottom: theme.spaceTokens.xXsmall),
            child: Text(
              label!,
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
          alignment: Alignment.center,
          height: inputStyles.heightNormal,
          padding: EdgeInsets.all(theme.spaceTokens.small),
          decoration: BoxDecoration(
            color: inputStyles.background,
            border: Border.all(
              color: resolveBorderColor(),
              width: inputStyles.borderWidth,
            ),
            borderRadius: BorderRadius.all(theme.borderRadiusTokens.normal),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (prefix != null)
                Padding(
                  padding: EdgeInsets.only(right: theme.spaceTokens.small),
                  child: prefix!,
                ),
              Expanded(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    items: items,
                    value: value,
                    onChanged: onChanged,
                    hint: placeholder != null
                        ? Text(
                            placeholder!,
                            style: TextStyle(
                                color: inputStyles.colorPlaceholder,
                                fontSize: inputStyles.fontSizeNormal),
                          )
                        : null,
                    style: TextStyle(
                        color: inputStyles.colorText,
                        fontSize: inputStyles.fontSizeNormal),
                    icon: Icon(OrbitIcons.chevron_down),
                    iconDisabledColor: inputStyles.colorTextDisabled,
                    iconEnabledColor: inputStyles.colorText,
                    isExpanded: true,
                    underline: null,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (state.message != null)
          Padding(
            padding: EdgeInsets.only(top: theme.spaceTokens.xXsmall),
            child: _message(context),
          ),
      ],
    );
  }

  Widget _message(BuildContext context) {
    final theme = OrbitTheme.of(context);
    final inputStyles = InputTokens.fromDefault(context);
    final iconStyles = IconTokens.fromDefalut(context);

    if (state is SelectStateError) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            OrbitIcons.alert_circle,
            color: inputStyles.borderColorErrorFocus,
            size: iconStyles.sizeSmall,
          ),
          SizedBox(width: theme.spaceTokens.xXsmall),
          Text(
            state.message!,
            style: TextStyle(color: inputStyles.borderColorErrorFocus),
          ),
        ],
      );
    } else {
      return Row(
        children: [
          Icon(
            OrbitIcons.information_circle,
            color: inputStyles.borderColorFocus,
            size: iconStyles.sizeSmall,
          ),
          SizedBox(width: theme.spaceTokens.xXsmall),
          Text(
            state.message!,
            style: TextStyle(color: inputStyles.borderColorFocus),
          ),
        ],
      );
    }
  }
}

abstract class SelectState {
  String? get message;
}

class SelectStateNormal extends SelectState {
  @override
  final String? message = null;
}

class SelectStateHelp extends SelectState {
  @override
  final String message;

  SelectStateHelp({required this.message});
}

class SelectStateError extends SelectState {
  @override
  final String message;

  SelectStateError({required this.message});
}
