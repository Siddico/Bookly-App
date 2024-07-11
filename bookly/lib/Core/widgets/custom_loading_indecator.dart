import 'package:flutter/material.dart';

class CustomLoadingIndecator extends StatelessWidget {
  const CustomLoadingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset('assets/images/loading.gif')
        //  CircularProgressIndicator(
        //   color: Colors.white,
        // ),
        );
  }
}
