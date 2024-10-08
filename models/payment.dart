import 'package:tutor_x_tution_management/data/enums.dart';
import 'package:tutor_x_tution_management/utils/constants.dart';

class Payment {
  late int paymentId;
  late int sessionId;
  late int amount;
  late String paymentDate;
  late PaymentMethod paymentMethod;
  late PaymentStatus paymentStatus;

  Payment({
    required this.paymentId,
    required this.sessionId,
    required this.amount,
    required this.paymentDate,
    required this.paymentMethod,
    required this.paymentStatus,
  });

  Payment.fromJson(Map<String, Object?> json) {
    paymentId = json[paymentIdColumn] as int;
    sessionId = json[sessionIdColumn] as int;
    amount = json[paymentAmountColumn] as int;
    paymentDate = json[paymentDateColumn] as String;
    paymentMethod = json[paymentMethodColumn] as PaymentMethod;
    paymentStatus = json[paymentStatusColumn] as PaymentStatus;
  }

  Map<String, Object?> toJson() => {
        paymentIdColumn: paymentId,
        sessionIdColumn: sessionId,
        paymentAmountColumn: amount,
        paymentDateColumn: paymentDate,
        paymentMethodColumn: paymentMethod,
        paymentStatusColumn: paymentStatus,
      };
}
