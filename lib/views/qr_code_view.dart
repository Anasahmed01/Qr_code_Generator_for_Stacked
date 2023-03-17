import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:stacked/stacked.dart';
import '../viewmodels/qr_code_viewmodel.dart';
import '../widgets/qr_code_widget.dart';

class QrView extends StatelessWidget {
  const QrView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => QrCodeViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            backgroundColor: backgroundColor,
            body: Center(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      QrImage(
                        data: viewModel.controller.text,
                        size: 200,
                        backgroundColor: Colors.white,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      textfield(
                          icon: IconButton(
                            onPressed: () {
                              viewModel.notifyListeners();
                            },
                            icon: const Icon(Icons.check),
                          ),
                          hintText: 'Enter the data',
                          controler: viewModel.controller),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
