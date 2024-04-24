class Arithmeticmodel {
  final int? first;
  final int? second;

Arithmeticmodel({required this.first,required this.second});


int sum(){
  return first!+second!;
}
int sub(){
  return first!-second!;
}
  
  
}