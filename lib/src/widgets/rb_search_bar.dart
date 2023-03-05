import 'package:flutter/material.dart';

class RBSearchBar extends StatefulWidget {
  final void Function(String)? onChanged;
  final String? hintText;
  const RBSearchBar({
    Key? key,
    required this.onChanged,
    this.hintText,
  }) : super(key: key);

  @override
  State<RBSearchBar> createState() => _RBSearchBarState();
}

class _RBSearchBarState extends State<RBSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        autofocus: false,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          fillColor: Colors.blue,
          border: const OutlineInputBorder(),
          prefixIcon: const Icon(Icons.search),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
