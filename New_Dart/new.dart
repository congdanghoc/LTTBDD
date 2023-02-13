import 'dart:io';

void main() { 
  int a=7;
  int p=5,t=4,r=100;
  double S=(p * t * r) / 100;
  print("Cong"); 
  print("Hello I am \"Cong\"");
  print("$a");
  print("$S");
  print("Binh phuong cua ${S} la ${S*S}");
  print("Nhap 1 so:");
  int? n = int.parse(stdin.readLineSync()!);
  print("Binh phuong cua ${n} la ${n*n}");
/*
  print("Nhap 2 so:");
  int? a1 = int.parse(stdin.readLineSync()!);
  int? a2 = int.parse(stdin.readLineSync()!);
  doicho(a1,a2);
  print("$a1, $a2");*/
  String str="123456";
  int str2=int.parse(str);
  print("$str2");

} 
void doicho(int a, int b){
 int tg=0;
 tg=a;
 a=b;
 b=tg;
}
