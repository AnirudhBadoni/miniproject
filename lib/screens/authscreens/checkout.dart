import 'package:flutter/material.dart';

import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'constant.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  final razorpay = Razorpay();
  TextEditingController controller = TextEditingController();

  @override
  @override
  void initSate() {
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, externalWallet);
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, paySuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, payError);
    super.initState();
  }

  void paySuccess(PaymentSuccessResponse response) {
    print(response.paymentId.toString());
  }

  void payError(PaymentFailureResponse response) {
    print(response.message = response.code.toString());
  }

  void externalWallet(ExternalWalletResponse response) {
    print(response.walletName);
  }

  getPayment() {
    var option = {
      'key': 'rzp_test_fP5Bw2oJgoKUsN',
      'amount': double.parse(controller.text.trim()) * 100,
      'name': 'moie',
      'prefill': {'contact': '1234567890', 'eamil': 'abc@gmail.com'}
    };
    try {
      razorpay.open(option);
    } catch (e) {
      print('erroris $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor:Kmain5 ,title: Text('Pay'),),
    backgroundColor: kMainColor,
    body: Container(
    padding: EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 20),
    margin: EdgeInsets.only(bottom: 200, left: 20, right: 20, top: 150),
    decoration: BoxDecoration(
    border: Border.all(color: Colors.black, width: 4),
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
    new BoxShadow(
    color:Colors.white,
// offset: new Offset(6.0, 6.0),
    ),
    ],
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
    Text(
    "Enter the amount!!",
    style: TextStyle(fontSize: 30),
    ),
    SizedBox(
    height: 45,
    ),TextField(
        controller: controller,
        keyboardType: TextInputType.number,
      ),
    SizedBox(
    height: 45,
    ),
    ElevatedButton.icon(
    style: ElevatedButton.styleFrom(
    onPrimary: Colors.black,
    primary: Kmain6,
    side: BorderSide(color: Kmain6, width: 2),
    minimumSize: Size(380, 55),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
    ),
    elevation: 0),
    onPressed: () => getPayment(),
    icon: Icon(Icons.link_outlined),
    label:Text('pay'),
    )
    ],
    ),
    ),
    );

  }
}










