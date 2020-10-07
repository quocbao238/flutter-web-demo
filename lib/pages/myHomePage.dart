import 'package:flutter/material.dart';
import 'package:webtest/helper/sizeHelper.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double sizeX,
      sizeafterPadding,
      itemSize,
      paddingItemSize,
      normalPadding = 0,
      sizeHeader,
      sizeText;

  @override
  Widget build(BuildContext context) {
    sizeX = MediaQuery.of(context).size.width;
    sizeX >= 1050 ? normalPadding = 80 : normalPadding = 0;
    sizeafterPadding = sizeX - normalPadding;
    if (sizeafterPadding >= 1400) {
      itemSize = (sizeafterPadding / 4) - 16;
      paddingItemSize = 64 / 3;
    } else if (sizeafterPadding >= 1050) {
      paddingItemSize = 48 / 2;
      itemSize = (sizeafterPadding / 3) - 16;
    } else if (sizeafterPadding >= 700) {
      itemSize = (sizeafterPadding / 2) - 16;
      paddingItemSize = 32;
    } else {
      itemSize = sizeafterPadding;
      paddingItemSize = 0;
    }
    print("sizeafterPadding $sizeafterPadding");

    sizeHeader = 16 + sizeX * 0.005;
    sizeText = 14.0 + sizeX * 0.005;

    return Scaffold(
      backgroundColor: Color(0xFFE7E7E7),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: normalPadding / 2),
          color: Color(0xFFE7E7E7),
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                headerTitle(),
                imgBaidoxe(
                  content:
                      "Cung cấp giải pháp thông minh toàn diện vào việc quản lý - vận hành thay thế cho bãi đổ xe thông thường",
                  title: "BÃI ĐỖ XE",
                  title2: "THÔNG ",
                  title3: "MINH",
                  urlImage:
                      'https://storage.googleapis.com/sunshine-advertising-website.appspot.com/website_sunshinetech_wp/uploads/1/2019/11/smart-parking-cap-nhat-cho-trong.jpg',
                ),
                contentBaidoXe(),
                sanpham(),
                listSanPham(),
                timchodauxe(),
                imgBaidoxe(
                  content:
                      "Thu thập thông tìn từ các cảm biến để hiển thị trên hộp LED",
                  content2:
                      "Hiển thị chỗ trống trên từng khu vực hoặc toàn bộ bãi xe",
                  title: "CẬP NHẬT CHỖ TRỐNG",
                  title2: "",
                  title3: "",
                  urlImage:
                      'https://storage.googleapis.com/sunshine-advertising-website.appspot.com/website_sunshinetech_wp/uploads/1/2019/11/smart-parking-cap-nhat-cho-trong.jpg',
                ),
                imgBaidoxe(
                  content: "Đặt trước chỗ đậu xe trên ứng dụng điện thoại",
                  content2: "Bảng LED thông báo biển số xe đã được đặt trước",
                  content3: "Camera quan sát chỗ đậu",
                  title: "ĐẶT CHỖ ĐẬU XE",
                  title2: "",
                  title3: "",
                  urlImage:
                      'https://storage.googleapis.com/sunshine-advertising-website.appspot.com/website_sunshinetech_wp/uploads/1/2019/12/smart-parking-app.jpg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget timchodauxe() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      margin: EdgeInsets.only(top: 32.0),
      width: sizeafterPadding,
      color: Colors.white,
      padding: EdgeInsets.only(
        top: SizeHelper.getSizePadding(sizeX) / 3,
        bottom: SizeHelper.getSizePadding(sizeX) / 3,
        left: SizeHelper.getSizePadding(sizeX) / 3,
        right: SizeHelper.getSizePadding(sizeX) / 2,
      ),
      child: Wrap(
        alignment: sizeafterPadding >= 1050
            ? WrapAlignment.start
            : WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          Column(
            crossAxisAlignment: sizeafterPadding >= 1050
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'TÌM CHỖ ĐẬU XE DỄ DÀNG',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: sizeHeader),
              ),
              SizedBox(height: SizeHelper.getSizePadding(itemSize) / 6),
              Text(
                'Cảm biến siêu âm và camera liên tục theo dõi chỗ đậu xe',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: sizeText),
              ),
              SizedBox(height: SizeHelper.getSizePadding(itemSize) / 6),
              Text(
                'LED hiển thị theo trạng thái có xe hoặc không',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: sizeText),
              ),
              SizedBox(height: SizeHelper.getSizePadding(itemSize) / 6),
              Text(
                'Hệ thống dẫn đường tự động trên điện thoại',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: sizeText),
              ),
              SizedBox(height: SizeHelper.getSizePadding(itemSize) / 6),
            ],
          ),
          SizedBox(width: 32.0),
          Container(
            child: Image.network(
                "https://storage.googleapis.com/sunshine-advertising-website.appspot.com/website_sunshinetech_wp/uploads/1/2019/11/smart-parking-tim-cho-dau-xe.jpg"),
            height: 300.0,
            width: sizeafterPadding >= 1050
                ? sizeafterPadding - 700
                : sizeafterPadding,
          )
        ],
      ),
    );
  }

  Widget listSanPham() {
    return Container(
      alignment: Alignment.topCenter,
      child: Wrap(
        direction: Axis.horizontal,
        runAlignment: WrapAlignment.spaceBetween,
        alignment: WrapAlignment.spaceBetween,
        spacing: paddingItemSize,
        runSpacing: 0.0,
        children: [
          _itemSanpham(
              tile: "Cảm biến siêu âm",
              desctiption:
                  "Sử dụng sóng siêu âm phát hiện xe ra, vào vị trí đỗ",
              urlImage:
                  "https://storage.googleapis.com/sunshine-advertising-website.appspot.com/website_sunshinetech_wp/uploads/1/2019/11/smart-parking-san-pham-1.png"),
          _itemSanpham(
            tile: "Hộp đèn LED",
            desctiption:
                "Nhận thông tin từ các cảm biến siêu âm, tính toán số chỗ trống còn lại trong từng khu vực",
            urlImage:
                "https://storage.googleapis.com/sunshine-advertising-website.appspot.com/website_sunshinetech_wp/uploads/1/2019/11/smart-parking-hinh-anh-minh-hoa1.jpg",
          ),
          _itemSanpham(
            tile: "Bảng LED",
            desctiption:
                "Hiển thị các trạng thái của từng vị trí đỗ, cùng với đó là hiển thị biển số xe đang đỗ hoặc biển số xe đã đặt chỗ từ trước",
            urlImage:
                "https://storage.googleapis.com/sunshine-advertising-website.appspot.com/website_sunshinetech_wp/uploads/1/2019/11/smart-parking-san-pham-3.png",
          ),
          _itemSanpham(
            tile: "Camera",
            desctiption:
                "Quan sát các vị trí đỗ kết hợp với hệ thống nhận diện biển số, giúp gửi biển số về các bảng Led hiển thị cũng như đưa ra cảnh báo khi có xe đậu sai vào vị trí đỗ đã được đặt chỗ trước",
            urlImage:
                "https://storage.googleapis.com/sunshine-advertising-website.appspot.com/website_sunshinetech_wp/uploads/1/2019/11/smart-parking-san-pham-4.png",
          ),
        ],
      ),
    );
  }

  Widget _itemSanpham({String urlImage, String tile, String desctiption}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      width: itemSize,
      height: 620.0,
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            // height: 300.0,
            width: itemSize,
            padding: EdgeInsets.all(16.0),
            child: Image.network(
              urlImage,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: SizeHelper.getSizePadding(itemSize) / 6),
          Text(
            tile,
            style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.black87,
                fontSize: sizeHeader),
          ),
          SizedBox(height: SizeHelper.getSizePadding(itemSize) / 6),
          Text(
            desctiption,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: sizeText),
          )
        ],
      ),
    );
  }

  Widget sanpham() {
    return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        color: Color(0xFFE7E7E7),
        padding: EdgeInsets.only(
            bottom: SizeHelper.getSizePadding(sizeX) / 5,
            top: SizeHelper.getSizePadding(sizeX) / 5),
        child: Center(
          child: Text(
            'Sản phẩm'.toUpperCase(),
            style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: sizeHeader),
          ),
        ));
  }

  Widget contentBaidoXe() {
    return Container(
      padding: EdgeInsets.only(
          bottom: SizeHelper.getSizePadding(sizeX) / 2.5,
          top: SizeHelper.getSizePadding(sizeX) / 2,
          right: SizeHelper.getSizePadding(sizeX)),
      width: sizeX,
      color: Color(0xFF0068A6),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Duy nhất giải pháp kết hợp 4 công nghệ tiên tiến',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: SizeHelper.getSizeTitle4(sizeX, ratio: 0.024)),
            ),
            SizedBox(height: SizeHelper.getSizePadding(sizeX) / 5),
            Text(
              'Phát hiện chỗ trống bằng camera và cảm biến siêu âm',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontSize: SizeHelper.getSizeTitle2(sizeX)),
            ),
            SizedBox(height: SizeHelper.getSizePadding(sizeX) / 5),
            Text(
              'Dẫn đường đến vị trí đỗ bằng công nghệ Bluetooth',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontSize: SizeHelper.getSizeTitle2(sizeX)),
            ),
            SizedBox(height: SizeHelper.getSizePadding(sizeX) / 5),
            Text(
              'Đặt chỗ trước và dẫn đường đến vị trí đỗ qua App',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontSize: SizeHelper.getSizeTitle2(sizeX)),
            ),
            SizedBox(height: SizeHelper.getSizePadding(sizeX) / 5),
            Text(
              'Biển LED hiển thị biển số tại mỗi vị trí đỗ',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontSize: SizeHelper.getSizeTitle2(sizeX)),
            )
          ],
        ),
      ),
    );
  }

  Widget imgBaidoxe(
      {String urlImage,
      String title = "",
      String title2 = "",
      String title3 = "",
      String content = "",
      String content2 = "",
      String content3 = ""}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      width: sizeafterPadding,
      child: Stack(
        children: [
          Container(
            width: sizeafterPadding,
            child: Image.network(urlImage, fit: BoxFit.fill),
          ),
          Positioned.fill(
            left: SizeHelper.getSizePadding(sizeX) / 2,
            right: SizeHelper.getSizePadding(sizeX),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 200),
                  child: Wrap(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: sizeHeader),
                      ),
                      SizedBox(width: 5.0),
                      title2.isNotEmpty
                          ? Text(
                              title2,
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white70,
                                  fontSize: sizeHeader),
                            )
                          : SizedBox(),
                      title3.isNotEmpty
                          ? Text(
                              title3,
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white70,
                                  fontSize: sizeHeader),
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: SizeHelper.getSizePadding(sizeX) * 2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: content2.isNotEmpty ? 16.0 : 0),
                      Text(
                        content,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: sizeText),
                      ),
                      SizedBox(height: content2.isNotEmpty ? 16.0 : 0),
                      content2.isNotEmpty
                          ? Text(
                              content2,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: sizeText),
                            )
                          : SizedBox(),
                      SizedBox(height: content3.isNotEmpty ? 16.0 : 0),
                      content3.isNotEmpty
                          ? Text(
                              content3,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: sizeText),
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget headerTitle() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(16, 16, 16, 32),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.end,
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.spaceEvenly,
        children: [
          _imgtopName(),
          _headerTitleText('Trang chủ', color: Colors.blueAccent),
          _headerTitleText('Smarthome'),
          _headerTitleText('Smart Parking'),
          _headerTitleText('Smart Security'),
          _headerTitleText('Tin tức'),
          _headerTitleText('SUNSHINE TECH'),
          _headerTitleText('Private Policy'),
          _language()
        ],
      ),
    );
  }

  Widget _language() {
    return Container(
      margin: EdgeInsets.only(left: 32.0, top: 16.0),
      width: MediaQuery.of(context).size.width < 800
          ? MediaQuery.of(context).size.width
          : 85,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("VI",
              style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold)),
          Text("|",
              style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal)),
          Text("EN",
              style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal)),
        ],
      ),
    );
  }

  Widget _headerTitleText(String title, {Color color}) {
    return Container(
      margin: EdgeInsets.only(left: 32.0, top: 16.0),
      child: Text(title,
          style: TextStyle(
              fontSize: 18,
              color: color != null ? color : Colors.black,
              fontWeight: color != null ? FontWeight.bold : FontWeight.normal)),
    );
  }

  Widget _imgtopName() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width < 990
            ? MediaQuery.of(context).size.width
            : 180,
        child: Image.network(
          'https://storage.googleapis.com/sunshine-advertising-website.appspot.com/website_sunshinetech_wp/uploads/1/2019/11/logo.png',
        ),
      ),
    );
  }
}
