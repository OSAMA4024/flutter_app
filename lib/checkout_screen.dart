import 'package:flutter/material.dart';

import 'package:whatsappui/payment_method_screen.dart';
import 'package:whatsappui/widgets/order_confirmation_screen.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int _selectedPaymentMethod = 0;
  bool _saveInfo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shipping Address",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Doe",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text("123 Main Street"),
                    Text("New York, NY 10001"),
                    Text("United States"),
                    SizedBox(height: 8),
                    Text("Phone: +1 234 567 890"),
                    SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("CHANGE"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Text(
                "Payment Method",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              PaymentMethodCard(
                icon: Icons.credit_card,
                title: "Credit Card",
                isSelected: _selectedPaymentMethod == 0,
                onTap: () {
                  setState(() {
                    _selectedPaymentMethod = 0;
                  });
                },
              ),
              SizedBox(height: 8),
              PaymentMethodCard(
                icon: Icons.paypal,
                title: "PayPal",
                isSelected: _selectedPaymentMethod == 1,
                onTap: () {
                  setState(() {
                    _selectedPaymentMethod = 1;
                  });
                },
              ),
              SizedBox(height: 8),
              PaymentMethodCard(
                icon: Icons.account_balance_wallet,
                title: "Bank Transfer",
                isSelected: _selectedPaymentMethod == 2,
                onTap: () {
                  setState(() {
                    _selectedPaymentMethod = 2;
                  });
                },
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Checkbox(
                    value: _saveInfo,
                    onChanged: (value) {
                      setState(() {
                        _saveInfo = value!;
                      });
                    },
                    activeColor: Theme.of(context).colorScheme.primary,
                  ),
                  Text("Save this information for next time"),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$205.98",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderConfirmationScreen(),
                      ),
                    );
                  },
                  child: Text("PLACE ORDER"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}