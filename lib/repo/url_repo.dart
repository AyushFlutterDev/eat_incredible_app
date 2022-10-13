class UrlRepo {
  static const loginwithOtp = "send_mobile_otp.php";
  static const verifyOtp = "mobile_otp_verify.php";
  static const logout = "mobile_otp_logout.php";
  static const category = 'category.php';
  static const productList = 'product.php';
  static String productListCategory(String categoryid) =>
      'product.php?cat_id=$categoryid';
  static String productDetail(String productid) =>
      'eachProduct.php?id=$productid';
}
