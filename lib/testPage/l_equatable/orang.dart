// class Orang {
//   String nama;
//   int umur;

//   Orang({this.nama = 'no name', this.umur = 0});

//   @override
//   operator ==(other) {
//     if (other is Orang && other.nama == nama && other.umur == umur) {
//       return true;
//     }
//     return false;
//   }

//   @override
//   int get hashCode => super.hashCode;
// }

import 'package:equatable/equatable.dart';

class Orang extends Equatable {
  final String nama;
  final int umur;

  const Orang({this.nama = 'no name', this.umur = 0});

  // @override
  // operator ==(other) {
  //   if (other is Orang && other.nama == nama && other.umur == umur) {
  //     return true;
  //   }
  //   return false;
  // }

  // @override
  // int get hashCode => super.hashCode;

  @override
  List<Object> get props => [nama, umur];
}
