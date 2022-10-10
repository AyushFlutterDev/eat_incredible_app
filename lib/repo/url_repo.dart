class UrlRepo {
  static const loginwithOtp = "loginwithOtp.php";
  static const verifyOtp = "check_otp.php";
  static const category = 'category.php';
  static const productList = 'product.php';
  static String productListCategory(String categoryid) =>
      'product.php?cat_id=$categoryid';
  static String productDetail(String productid) =>
      'eachProduct.php?id=$productid';
}
