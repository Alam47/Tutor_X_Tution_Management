import 'dart:convert';

import 'package:tutor_x_tution_management/models/student_review.dart';
import 'package:tutor_x_tution_management/service/api/api_exceptions.dart';
import 'package:tutor_x_tution_management/utils/api_constants.dart';
import 'package:http/http.dart' as http;
import 'package:tutor_x_tution_management/utils/constants.dart';

class StudentReviewApi {
  StudentReviewApi._sharedInstance();
  static final _shared = StudentReviewApi._sharedInstance();
  factory StudentReviewApi() => _shared;

  Future<List<StudentReview>> getAllReviews() async {
    List<StudentReview> studentReviews = [];
    final uri = Uri.parse("$baseUrl/$studentReviewRoute");
    try {
      final response = await http.get(
        uri,
        headers: headers,
      );
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        final List<dynamic> jsonData = json.decode(response.body);
        studentReviews =
            jsonData.map((e) => StudentReview.fromJson(e)).toList();
      }
    } on http.ClientException {
      throw ApiClientException();
    } catch (e) {
      throw ApiGenericException(code: e.toString());
    }
    return studentReviews;
  }

  Future<StudentReview?> getReviewById(int reviewId) async {
    late StudentReview? studentReview;
    final uri = Uri.parse("$baseUrl/$studentReviewRoute/$reviewId");
    try {
      final response = await http.get(
        uri,
        headers: headers,
      );
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        studentReview = StudentReview.fromJson(jsonData);
      }
    } on http.ClientException {
      throw ApiClientException();
    } catch (e) {
      throw ApiGenericException(code: e.toString());
    }
    return studentReview;
  }

  Future<List<StudentReview>> getReviewByStudentId(int studentId) async {
    List<StudentReview> studentReviews = [];
    final uri =
        Uri.parse("$baseUrl/$studentReviewRoute?$studentIdColumn=$studentId");
    try {
      final response = await http.get(
        uri,
        headers: headers,
      );
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        final List<dynamic> jsonData = json.decode(response.body);
        studentReviews =
            jsonData.map((e) => StudentReview.fromJson(e)).toList();
      }
    } on http.ClientException {
      throw ApiClientException();
    } catch (e) {
      throw ApiGenericException(code: e.toString());
    }
    return studentReviews;
  }

  Future<List<StudentReview>> getReviewByTutorId(int tutorId) async {
    List<StudentReview> studentReviews = [];
    final uri =
        Uri.parse("$baseUrl/$studentReviewRoute?$tutorIdColumn=$tutorId");
    try {
      final response = await http.get(
        uri,
        headers: headers,
      );
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        final List<dynamic> jsonData = json.decode(response.body);
        studentReviews =
            jsonData.map((e) => StudentReview.fromJson(e)).toList();
      }
    } on http.ClientException {
      throw ApiClientException();
    } catch (e) {
      throw ApiGenericException(code: e.toString());
    }
    return studentReviews;
  }

  Future<List<StudentReview>> getReviewByStudentAndTutorId(
      int studentId, int tutorId) async {
    List<StudentReview> studentReviews = [];
    final uri = Uri.parse(
        "$baseUrl/$studentReviewRoute?$studentIdColumn=$studentId&$tutorIdColumn=$tutorId");
    try {
      final response = await http.get(
        uri,
        headers: headers,
      );
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        final List<dynamic> jsonData = json.decode(response.body);
        studentReviews =
            jsonData.map((e) => StudentReview.fromJson(e)).toList();
      }
    } on http.ClientException {
      throw ApiClientException();
    } catch (e) {
      throw ApiGenericException(code: e.toString());
    }
    return studentReviews;
  }

  Future<http.Response> postReview({
    Map<String, dynamic> requestBody = const {},
  }) async {
    final uri = Uri.parse("$baseUrl/$studentReviewRoute");
    try {
      final response = await http.post(
        uri,
        headers: headers,
        body: json.encode(requestBody),
      );
      return response;
    } catch (e) {
      final responseBody = {
        "error": {"message": e.toString(), "code": 404}
      };
      final response = http.Response(
        jsonEncode(responseBody),
        500,
        headers: {
          'Content-Type': 'application/json',
        },
      );
      return response;
    }
  }

  Future<http.Response> updateReview({
    required int reviewId,
    Map<String, dynamic> body = const {},
  }) async {
    final uri = Uri.parse("$baseUrl/$studentReviewRoute/$reviewId");
    try {
      final response = await http.put(
        uri,
        headers: headers,
        body: json.encode(body),
      );
      return response;
    } catch (e) {
      final responseBody = {
        "error": {"message": e.toString(), "code": 404}
      };
      final response = http.Response(
        jsonEncode(responseBody),
        500,
        headers: {
          'Content-Type': 'application/json',
        },
      );
      return response;
    }
  }

  Future<http.Response> deleteReview(int reviewId) async {
    final uri = Uri.parse("$baseUrl/$studentReviewRoute/$reviewId");
    try {
      final response = await http.delete(
        uri,
        headers: headers,
      );
      return response;
    } catch (e) {
      final responseBody = {
        "error": {"message": e.toString(), "code": 404}
      };
      final response = http.Response(
        jsonEncode(responseBody),
        500,
        headers: {
          'Content-Type': 'application/json',
        },
      );
      return response;
    }
  }
}
