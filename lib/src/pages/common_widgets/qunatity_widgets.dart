import 'package:flutter/material.dart';

class QuantityWidget extends StatelessWidget {
  final int value;
  final String suffixText;
  final Function(int quantity) result;
  final bool isRemoved;

  const QuantityWidget(
      {super.key,
      required this.value,
      required this.suffixText,
      required this.result,
      this.isRemoved = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          QuantityButton(
            iconData:
                !isRemoved || value > 1 ? Icons.remove : Icons.delete_forever,
            color: !isRemoved || value > 1
                ? const Color.fromARGB(255, 201, 201, 201)
                : Colors.red,
            onPressed: () {
              if (value == 1 && !isRemoved) return;
              int resultCount = value - 1;
              result(resultCount);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Text(
              '$value$suffixText',
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          QuantityButton(
            iconData: Icons.add,
            color: Colors.blue,
            onPressed: () {
              int resultCount = value + 1;
              result(resultCount);
            },
          ),
        ],
      ),
    );
  }
}

class QuantityButton extends StatefulWidget {
  const QuantityButton(
      {super.key,
      required this.color,
      required this.iconData,
      required this.onPressed});
  final Color color;
  final IconData iconData;
  final VoidCallback onPressed;

  @override
  State<QuantityButton> createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<QuantityButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: widget.onPressed,
        child: Ink(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: widget.color,
            shape: BoxShape.circle,
          ),
          child: Icon(
            widget.iconData,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
    );
  }
}
