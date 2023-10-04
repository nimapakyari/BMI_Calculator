import 'dart:math';

class calculatorBrain {

  final int? weight ;
  final int? height ;

  calculatorBrain({ this.weight , this.height}) ;
  late double _bmi ;

  String CalculateBmi () {

    _bmi  = weight! / pow(height!/100,2) ;
return _bmi.toStringAsFixed(1) ;

  }

  String GetResult ( ) {

    if ( _bmi >=25 ) {
return 'Overweight' ;
    }
else if ( _bmi > 18.5) { return 'Normal' ; }

else { return 'Underweight'  ; } ;



  }





}