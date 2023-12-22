# Custom Dropdown Button for Flutter

## About
Flutter's default `DropdownButton` is a versatile widget that is used widely in mobile development. However, it lacks certain behaviors that developers may desire, such as dynamically adjusting its width based on the length of the selected item's text—similar to a native HTML `select` element. To fill this gap, this repository presents a custom dropdown button that is designed to mimic this specific behavior and provide additional customization options.

## Features
- **Dynamic Width Adjustment**: The width of the dropdown adjusts to fit the content of the selected item, rather than the widest item in the list.
- **No Outline**: The dropdown has no outline, providing a clean and minimalistic look that can blend seamlessly into any UI design.
- **Custom Color Scheme**: The text and icon colors are customizable, allowing for a perfect match with both light and dark themes.
- **Overflow Handling**: For items with text that is too long for the available space, the widget implements an ellipsis to indicate overflow, ensuring the UI remains uncluttered.
- **Dropdown List Offset**: The dropdown list is positioned below the dropdown button, ensuring that the button itself is not covered when the list is displayed.

## Usage
To use the `CustomDropdownButton` in your Flutter project, include the `custom_dropdown_button.dart` file in your project and use the widget as shown in the examples provided.

Here is a quick snippet on how to use the `CustomDropdownButton`:

```dart
CustomDropdownButton<YourDataType>(
  value: selectedValue,
  items: dataList,
  onChanged: (YourDataType? newValue) {
    // Handle the change in selection
  },
  getDisplayValue: (YourDataType data) => data.displayValue,
)
