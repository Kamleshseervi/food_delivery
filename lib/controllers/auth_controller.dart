import 'package:food_delivery_dbestech/data/repository/auth_repo.dart';
import 'package:food_delivery_dbestech/models/signup_body_model.dart';
import 'package:get/get.dart';

class AuthController extends GetxController implements GetxService {
  final AuthRepo authRepo;
  AuthController({required this.authRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  registration(SignUpBody signUpBody) {
    _isLoading = true;
  }
}
