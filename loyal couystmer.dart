void main() {
  final customer = Customer("batol");
  customer.add(100);
  print(customer.getPurchaseAmount());
  final loyalCustomer = LoyalCustomer("batol");
  loyalCustomer.add(200);
  print(loyalCustomer.getPurchaseAmount());
}
// 1. Set the `purchaseAmount` as private.

class Customer {
  String name;
  double _purchaseAmount =
      0; // to make it privet we made the _before the numaing

  Customer(this.name);

  void add(double price) {
    _purchaseAmount += price;
  }

  double getPurchaseAmount() {
    return _purchaseAmount;
  }
}

// 2. Create a class `LoyalCustomer` that extends `Customer`.
class LoyalCustomer extends Customer {
  // 3. Create a constructor for the subclass.
  LoyalCustomer(super.name);
  // 4. Override the `getPurchaseAmount` to give the loyal customer a discount of 10%
  @override
  double getPurchaseAmount() {
    final discount =
        _purchaseAmount * 0.1; // we multiplay 0.1 which is 10% from the perches
    return _purchaseAmount - discount;
  }
}
