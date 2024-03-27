import 'package:diu/Constant/color_is.dart';
import 'package:diu/Constant/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestFile extends StatefulWidget {
  final List<String> options;
  final ValueChanged<String?> onItemSelected;
  final String text;

  const TestFile({
    Key? key,
    required this.options,
    required this.onItemSelected,
    required this.text,
  }) : super(key: key);

  @override
  State<TestFile> createState() => _TestFileState();
}

class _TestFileState extends State<TestFile> {
  final TextEditingController selectedItemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Coloris.text_color,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Consumer<TestFileState>(
          builder: (context, state, _) {
            return DropdownButton(
              value: state.dropValue,
              items: widget.options.map((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).length >
                      0
                  ? widget.options.map((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList()
                  : null,
              hint: Text(widget.text),
              isExpanded: true,
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Coloris.text_color),
              underline: Container(
                color: Colors.transparent,
              ),
              onChanged: (String? newValue) {
                state.setDropValue(newValue);
                widget.onItemSelected(newValue);
              },
            );
          },
        ),
      ),
    );
  }
}
