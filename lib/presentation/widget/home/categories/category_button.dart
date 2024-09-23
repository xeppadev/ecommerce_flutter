import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton(
      {super.key,
      required this.category,
      this.imageUrl,
      required this.isSelected,
      required this.onPressed});

  final String category;
  final String? imageUrl;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color:
              isSelected ? Theme.of(context).primaryColor : Colors.transparent,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border: Border.all(
            color: isSelected
                ? Theme.of(context).primaryColor
                : Theme.of(context).dividerColor,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            if (imageUrl != null)
              SvgPicture.asset(
                imageUrl!,
                height: 20,
                colorFilter: ColorFilter.mode(
                  isSelected ? Colors.white : Colors.black,
                  BlendMode.srcIn,
                ),
              ),
            if (imageUrl != null) const SizedBox(width: 8),
            Text(
              category,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
