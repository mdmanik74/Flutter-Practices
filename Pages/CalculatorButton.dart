import 'package:flutter/material.dart';

class CalculatorButton extends StatefulWidget {
  const CalculatorButton({Key? key, required String text}) : super(key: key);

  @override
  State<CalculatorButton> createState() => _CalculatorButtonState();
}

class _CalculatorButtonState extends State<CalculatorButton> {
  late String text=0 as String;
  @override
  void initState(){
    text="";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: (){},
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(5.0),
          ),
          child: Text(text),
        ),
      ),

    );
  }
}
