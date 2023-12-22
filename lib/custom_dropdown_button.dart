import 'package:flutter/material.dart';

class CustomDropdownButton<T> extends StatelessWidget {
  final T? value;
  final List<T> items;
  final ValueChanged<T?> onChanged;
  final String Function(T) getDisplayValue;

  const CustomDropdownButton({
    Key? key,
    this.value,
    required this.items,
    required this.onChanged,
    required this.getDisplayValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<T>(
      padding: EdgeInsets.zero,
      onSelected: onChanged,
      itemBuilder: (BuildContext context) {
        return items.map((T item) {
          return PopupMenuItem<T>(
            value: item,
            child: Text(getDisplayValue(item), style: const TextStyle(color: Colors.white)),
          );
        }).toList();
      },
      offset: const Offset(0, kToolbarHeight), // Offset to position the dropdown below the button
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        child: Row(
          children: [
            Flexible(
              child: Text(
                getDisplayValue(value ?? items.first),
                style: const TextStyle(color: Colors.white, fontSize: 16),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Icon(Icons.arrow_drop_down, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
