import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:x_eats/core/const.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_text_button.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final TextEditingController _pinController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  void dispose() {
    _pinController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _verifyCode(String code) async {
    setState(() => _isLoading = true);

    // Simulate API call or verification delay
    await Future.delayed(const Duration(seconds: 2));

    setState(() => _isLoading = false);

    // Navigate to next screen after success
    Navigator.pushNamed(context, ScreenConst.nameScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verify Phone Number',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            Text(
              'Please enter the 6 digit code sent to 1012345668 through SMS',
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Text("Didn't et the code? "),
                CustomTextButton(
                  textColor: AppColors.lightGreen,
                  text: 'Resend',
                  fontWeight: FontWeight.w400,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 25),
            PinCodeTextField(
              appContext: context,
              controller: _pinController,
              focusNode: _focusNode,
              length: 6,
              obscureText: false,
              animationType: AnimationType.fade,
              cursorColor: Colors.black,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(6),
                fieldHeight: 48,
                fieldWidth: 48,
                activeFillColor: Colors.white,
                selectedFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                activeColor: Colors.green,
                selectedColor: Colors.black,
                inactiveColor: Colors.grey,
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                print(value);
              },
              onCompleted: _verifyCode,
            ),
            if (_isLoading)
              const SpinKitFadingCircle(color: Colors.grey, size: 50.0),
          ],
        ),
      ),
    );
  }
}
