import 'dart:async';

import 'package:pamobile_first_flutter_app/model/login.dart';
import 'package:pamobile_first_flutter_app/model/otp.dart';
import 'package:pamobile_first_flutter_app/services/network_service_response.dart';

abstract class IOTPService {
  Future<NetworkServiceResponse<CreateOTPResponse>> createOTP(
      String phoneNumber);
  Future<NetworkServiceResponse<OTPResponse>> fetchOTPLoginResponse(
      Login userLogin);
}
