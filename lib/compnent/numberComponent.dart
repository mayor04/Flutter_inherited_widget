import 'package:flutter/material.dart';
import 'package:jersey_app/viewmodel/NumberVm.dart';

class NumberInheritedWidget extends InheritedWidget {
  final NumberVm? numberVm;

  NumberInheritedWidget({
    Key? key,
    required Widget child,
    this.numberVm,
  }) : super(key: key, child: child);

  static NumberInheritedWidget of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType() as NumberInheritedWidget;

  @override
  bool updateShouldNotify(covariant NumberInheritedWidget oldWidget) {
    return oldWidget.numberVm?.number != numberVm?.number;
  }
}

class NumberDisplay extends StatefulWidget {
  final Widget child;
  NumberDisplay({Key? key, required this.child}) : super(key: key);

  @override
  _NumberDisplayState createState() => _NumberDisplayState();
}

class _NumberDisplayState extends State<NumberDisplay> {
  NumberVm? numberVm;

  @override
  void initState() {
    super.initState();
    numberVm = NumberVm();
    numberVm?.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return NumberInheritedWidget(
      numberVm: numberVm,
      child: widget.child,
    );
  }
}
