import 'package:get/get.dart';

void main() {
  print(GetUtils.camelCase('hallo semua semoga sehat selalu'));
  print(GetUtils.capitalize('hallo semua semoga sehat selalu'));
  print(GetUtils.capitalizeFirst('hallo semua semoga sehat selalu'));
  print(GetUtils.isAlphabetOnly('hallo semua semoga sehat selalu'));
  print(GetUtils.isBinary('10010101'));
  print(GetUtils.isCaseInsensitiveContains('saya beli tomat', "tOmAt"));
  print(GetUtils.isCurrency("Rp 2000"));
  print(GetUtils.isCurrency("\$ 2000"));
  print(GetUtils.isEmail("2000@gmail.com"));
  print(GetUtils.isExcel("data skripsi.xls"));
  print(GetUtils.isPhoneNumber("+628866"));
}
