import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_textstyle.dart';
import 'icon_button.dart';

typedef onTextChanged = Function(String?);

/// Custom Text TextField
/// That accepts multiple params
///  Built in clear text feature
class AppTextField extends StatefulWidget {
  final bool showCloseButton;
  final TextEditingController? controller;
  final String? hintText;
  final Icon? icon;
  final onTextChanged? onChange;

  const AppTextField({
    Key? key,
    this.showCloseButton = true,
    this.controller,
    this.hintText,
    this.onChange,
    this.icon,
  }) : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        setState(() {});
        if (widget.onChange != null) {
          widget.onChange!.call(value);
        }
      },
      controller: widget.controller ?? _controller,
      textAlignVertical: TextAlignVertical.center,
      cursorColor: AppColors.iconColor,
      decoration: InputDecoration(
        hintStyle: AppTextStyles.hintTextStyle(),
        suffixIcon: showClearIcon(),
        hoverColor: AppColors.iconColor,
        labelStyle: AppTextStyles.blackTextStyle15(),
        contentPadding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
        icon: widget.icon,
        border: InputBorder.none,
        hintText: widget.hintText,
      ),
    );
  }

  Widget showClearIcon() {
    if ((widget.controller?.text != '' && widget.controller?.text != null) ||
        _controller.text != '') {
      if (widget.showCloseButton) {
        return AppIconButton(
          onTap: () => onClearTap(),
          icon: Icons.close,
        );
      }
    }
    return const SizedBox();
  }

  void onClearTap() {
    if (widget.showCloseButton) {
      if (widget.controller != null) {
        widget.controller!.clear();
      } else {
        _controller.clear();
      }
    }
    setState(() {});
  }
}
