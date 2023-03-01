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

/*class RBSearchBar extends StatelessWidget {
  void Function(String)? onTextChange;
  RBSearchBar({super.key, this.onTextChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(8.0),
      child: TextField(
          onChanged: onTextChange,
          decoration: InputDecoration(
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search Robots ...',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
              ),
              contentPadding: EdgeInsets.zero
          )
      ),
    );
  }
}*/