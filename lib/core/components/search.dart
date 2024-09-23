import 'package:app_flutter_gps/core/theme/input_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  const Search(
      {super.key,
      this.isSearch = true,
      this.onChanged,
      this.onSaved,
      this.onFieldSubmitted,
      this.validator,
      this.onTabFilter,
      this.focusNode,
      this.autoFocus = false});

  final bool isSearch;
  final ValueChanged<String?>? onChanged, onSaved, onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onTabFilter;
  final FocusNode? focusNode;
  final bool autoFocus;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      focusNode: focusNode,
      autofocus: autoFocus,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: 'Search',
        filled: false,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
        border: secondaryOutlineInputBorder(context),
        enabledBorder: secondaryOutlineInputBorder(context),
        prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              height: 12,
              'assets/icons/SearchForm.svg',
              color: Theme.of(context).iconTheme.color!.withOpacity(0.3),
            )),
        suffixIcon: SizedBox(
          width: 40,
          child: IconButton(
            icon: SvgPicture.asset(
              height: 24,
              'assets/icons/Filter.svg',
              color: Theme.of(context).iconTheme.color!.withOpacity(0.3),
            ),
            onPressed: onTabFilter,
          ),
        ),
      ),
    ));
  }
}
