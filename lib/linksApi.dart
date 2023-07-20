class Apilinks {
  static const String linskServerName =
      "https://0samaahmed.com/ecommerce2/delivery";
  static const String linkimageCategories =
      "https://0samaahmed.com/ecommerce2/upload/categories";
  static const String linkimageItems =
      "https://0samaahmed.com/ecommerce2/upload/items";

//===================== Auth ==================
  static const String linksignup = "$linskServerName/auth/signup.php";
  static const String linkslogin = "$linskServerName/auth/login.php";
  static const String linksverifycode = "$linskServerName/auth/verifycode.php";
  static const String linksReSendVerifyCode =
      "$linskServerName/auth/resendVerifycode.php";

  //===================ForgetPassword =====================

  static const String linkcheckemail =
      "$linskServerName/auth/forgetpassword/checkemail.php";

  static const String linkcheckemailGetData =
      "$linskServerName/auth/forgetpassword/checkemailGetData.php";

  static const String linkcheckemailverifyCode =
      "$linskServerName/auth/forgetpassword/checkemailverifyCode.php";
  static const String linkresetpassword =
      "$linskServerName/auth/forgetpassword/resetpassword.php";

//=====================

  static const String linkview = "$linskServerName/categories/view.php";
  static const String linkhome = "$linskServerName/home.php";
  static const String linkitem = "$linskServerName/item/items.php";

  //imagesCategories

  static const String linkcamera = "$linkimageCategories/camera.svg";
  static const String linkdress = "$linkimageCategories/dress.svg";
  static const String linkmobile = "$linkimageCategories/mobile.svg";
  static const String linklaptop = "$linkimageCategories/laptop.svg";
  static const String linkshose = "$linkimageCategories/shoes.svg";

  //search
  static const String linksearch = "$linskServerName/search.php";

  //==============address=============================
  static const String linkaddaddress = "$linskServerName/address/add.php";
  static const String linkdeleteaddress = "$linskServerName/address/delete.php";
  static const String linkviewaddress = "$linskServerName/address/view.php";
  static const String linkupdateaddress = "$linskServerName/address/update.php";

  //==============coupon=============================
  static const String linkcheckcoupon =
      "$linskServerName/coupon/checkcoupon.php";

  //==============notification=============================
  static const String linknotifivation = "$linskServerName/notification.php";
  static const String linkdeletenotfication =
      "$linskServerName/deleteNitfication.php";

  //=================orders==========================
  static const String linkorderscheckout =
      "$linskServerName/orders/checkout.php";
  static const String linkorderspending = "$linskServerName/orders/view.php";
  static const String linkordersdetails = "$linskServerName/orders/details.php";
  static const String linkordersaccepted =
      "$linskServerName/orders/accepted.php";
  static const String linkordersarchive = "$linskServerName/orders/archive.php";
  static const String linkorderapprove = "$linskServerName/orders/approved.php";
  static const String linkorderdone = "$linskServerName/orders/done.php";

  //=================offers==========================
  static const String linkoffers = "$linskServerName/offers.php";

  //=================rating==========================
  static const String linkrating = "$linskServerName/rating.php";
}


// http://osamagamil.rf.gd/ecommerce2/item/