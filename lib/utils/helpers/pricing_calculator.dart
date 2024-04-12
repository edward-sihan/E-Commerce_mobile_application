class MyPricingCalculator {
  static double calcualteTotalPrice(double productPrice, String location) {
    double taxRate = double.parse(getTaxRateForLocation(location));
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;

    return totalPrice;
  }

  static String calculateShipingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calclateTax(double productPrice, String location) {
    double taxRate = double.parse(getTaxRateForLocation(location));
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static String getTaxRateForLocation(String location) {
    return '0.10';
  }

  static double getShippingCost(String location) {
    return 5.00;
  }
}
