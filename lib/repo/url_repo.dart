class UrlRepo {
  static const register = "register.php";
  static const category = 'category.php';
  static const product = 'product.php';
  static String productDetail(String productid) =>
      'eachProduct.php?id=$productid';
}
