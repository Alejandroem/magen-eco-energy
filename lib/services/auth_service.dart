import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:myapp/env.dart';

import '../models/user.dart';
import 'package:http/http.dart' as http;

abstract class AuthService {
  Future<String> loginWithEmailAndPassword(String email, String password);
  Future<String> signUpWithEmailAndPassword(User user, String password);
  Future<bool> updatePassword(String password);
  Future<bool> sendRecoveryEmail(String email);
  Future<String> resetPassword(String code);
  Future<void> signOut();
}

class ShadowboxAuthService implements AuthService {
  ShadowboxAuthService();

  @override
  Future<String> loginWithEmailAndPassword(
      String email, String password) async {
    // /shadowbox/hook/auth/login/username
    final uri = Uri(
        host: Environment.host, path: '/shadowbox/hook/auth/login/username');
    final client = http.Client();
    final body = {
      "email": email,
      "password": password,
    };
    final response = await client.post(
      uri,
      body: body,
    );
    log("Response ${response.toString()}");
    if (response.statusCode == 200) {
      final decodedBody = jsonDecode(response.body);
      final jwt = (decodedBody["jwt"] ?? "") as String;
      if (jwt.isNotEmpty) {
        return jwt;
      }
    }
    throw Exception("Something went wrong while login in");
  }

  @override
  Future<String> signUpWithEmailAndPassword(User user, String password) async {
    // /shadowbox/hook/auth/signup/username
    final uri = Uri(
        host: Environment.host, path: 'shadowbox/hook/auth/signup/username');
    final client = http.Client();
    final body = {
      {
        'fullname': user.fullName,
        'userID': user.username,
        'password': password,
        'email': user.email,
        'street': user.streetAddress,
        'city': user.city,
        'state': user.stateOrProvince,
        'country': user.country,
        'zipcode': user.postalCode,
        'phone': user.phoneNumber,
      }
    };
    final response = await client.post(
      uri,
      body: body,
    );
    log("Response ${response.toString()}");
    if (response.statusCode == 200) {
      final decodedBody = jsonDecode(response.body);
      final jwt = (decodedBody["jwt"] ?? "") as String;
      if (jwt.isNotEmpty) {
        return jwt;
      }
    }
    throw Exception("Something went wrong while signing up");
  }

  @override
  Future<void> signOut() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<String> resetPassword(String code) async {
    ///shadowbox/hook/auth/otp/usermane
    final uri =
        Uri(host: Environment.host, path: '/shadowbox/hook/auth/otp/usermane');
    final client = http.Client();
    final body = {"code": code};
    final response = await client.post(
      uri,
      body: body,
    );
    log("Response ${response.toString()}");
    if (response.statusCode == 200) {
      final decodedBody = jsonDecode(response.body);
      final jwt = (decodedBody["jwt"] ?? "") as String;
      if (jwt.isNotEmpty) {
        return jwt;
      }
    }
    throw Exception("Something went wrong while reseting password");
  }

  @override
  Future<bool> sendRecoveryEmail(String email) async {
    //https://discountsonservices.net/shadowbox/hook/auth/forgot/username
    final uri = Uri(
        host: Environment.host, path: '/shadowbox/hook/auth/forgot/username');
    final client = http.Client();
    final body = {"email": email};
    final response = await client.post(
      uri,
      body: body,
    );
    log("Response ${response.toString()}");
    if (response.statusCode == 200) {
      final decodedBody = jsonDecode(response.body);
      if (decodedBody["sent"] ?? false) {
        return true;
      }
    }
    return false;
  }

  @override
  Future<bool> updatePassword(String password) async {
    //https://discountsonservices.net/shadowbox/hook/auth/forgot/username
    final uri = Uri(
        host: Environment.host, path: '/shadowbox/hook/auth/password/username');
    final client = http.Client();
    final body = {
      "password": password,
    };
    final response = await client.post(
      uri,
      body: body,
    );
    log("Response ${response.toString()}");
    if (response.statusCode == 200) {
      final decodedBody = jsonDecode(response.body);
      if (decodedBody["sent"] ?? false) {
        return true;
      }
    }
    return false;
  }
}
