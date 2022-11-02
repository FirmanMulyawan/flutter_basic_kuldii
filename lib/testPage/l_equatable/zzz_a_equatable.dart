import './orang.dart';

void main() {
  var orang1 = const Orang(nama: "joni", umur: 30);
  // var orang2 = Orang(nama: "dikul", umur: 35);
  var orang3 = const Orang(nama: "joni", umur: 30);

  if (orang1 == orang3) {
    print('sama');
  } else {
    print('tidak sama');
  }
}
