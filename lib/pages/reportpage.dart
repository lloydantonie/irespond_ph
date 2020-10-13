import 'package:flutter/material.dart';
import 'package:irespond_ph/bloc/navigation_bloc.dart';

class ReportPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Report",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}
