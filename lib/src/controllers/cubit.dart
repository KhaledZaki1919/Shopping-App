import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping/src/controllers/state.dart';

class shoppingCubit extends Cubit<shoppingState> {
  shoppingCubit() : super(shopinglnitiatState() as shoppingState);
  static shoppingCubit get(context) => BlocProvider.of(context);
  int index = 0;
  List<String> buildText = [
    '“Your gateway to a world of exceptional footwear, where you can find the latest releases from global brands at the touch of a button.”',
    'With the Sneakers app, say goodbye to long shopping trips! Shop for the shoes you dream of from the comfort of your own home and enjoy a hassle-free and fast shopping experience.',
    'More than just a store, Sneakers is a destination for fashion and style enthusiasts, offering tips and recommendations to suit your style and taste.'
  ];
}
