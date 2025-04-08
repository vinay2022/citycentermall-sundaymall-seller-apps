import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;
    final height = mediaQuery.size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.06, vertical: height * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.04),

              Icon(Icons.shopping_bag_outlined, size: 60, color: Colors.deepPurple),
              SizedBox(height: height * 0.02),
              const Text(
                'SundayMall',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),

              const Text(
                'Register Using Your Credentials',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: height * 0.04),

              _buildDropdown(label: 'Business Type', icon: Icons.business),
              SizedBox(height: height * 0.02),

              _buildTextField(label: 'GST No', prefixIcon: Icons.confirmation_num_outlined),
              SizedBox(height: height * 0.02),

              _buildTextField(label: 'Address', prefixIcon: Icons.location_on),
              SizedBox(height: height * 0.02),

              _buildDropdown(label: 'Choose Your State', icon: Icons.map_outlined),
              SizedBox(height: height * 0.02),

              Row(
                children: [
                  Expanded(
                    child: _buildTextField(label: 'Pincode', prefixIcon: Icons.pin_drop_outlined),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _buildTextField(label: 'City', prefixIcon: Icons.location_city_outlined),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'I agree with',
                        style: const TextStyle(color: Colors.black, fontSize: 12),
                        children: [
                          TextSpan(
                            text: 'Terms & Conditions ',
                            style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {},
                          ),
                          const TextSpan(text: 'and '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: height * 0.02),

              // Gradient Button
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF5D5FEF), Color(0xFF6BC0FF)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account? ', style: TextStyle(fontSize: 14)),
                  GestureDetector(
                    onTap: () {
                      // TODO: Navigate to Sign In
                    },
                    child: const Text(
                      'Sign in here',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String label, IconData? prefixIcon}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget _buildDropdown({String label = 'Select', IconData? icon = Icons.arrow_drop_down}) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      items: const [
        DropdownMenuItem(value: 'Retailer', child: Text('Retailer')),
        DropdownMenuItem(value: 'Distributor', child: Text('Distributor')),
        DropdownMenuItem(value: 'Wholesale', child: Text('Wholesale')),
      ],
      onChanged: (value) {},
    );
  }
}
