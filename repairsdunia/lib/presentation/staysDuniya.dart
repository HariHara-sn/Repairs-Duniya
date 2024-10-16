import 'package:flutter/material.dart';
import 'package:repairsdunia/presentation/pgDuniya.dart';
import 'package:repairsdunia/theme/Appcolors.dart';
import 'package:repairsdunia/widgets/categoryCard.dart';

import 'package:repairsdunia/widgets/floatingbtn.dart';

class StaysDuniya extends StatelessWidget {
  const StaysDuniya({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(right: 28.0),
          child: Text(
            'Stays Duniya',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        actions: [
          floatingicons(const Icon(Icons.favorite_border)),
          floatingicons(const Icon(Icons.people_alt_outlined)),
          floatingicons(const Icon(Icons.notification_add_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Banner Section
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(20), // Add padding for spacing
            height: 160,
            width: MediaQuery.of(context).size.width * 0.99,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              gradient: const LinearGradient(
                colors: [
                  AppColors.lightpink1,
                  AppColors.lightpink1,
                  AppColors.lightpink1,
                  Colors.white,
                  Colors.white,
                ], // Soft gradient for clarity
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                // Text Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Flat 20% Off on first\navailed service  ",
                      style: TextStyle(
                        fontSize: 19, // Increased font size for clarity
                        fontWeight: FontWeight.bold,
                        color:
                            AppColors.customblack, // Vibrant red for emphasis
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 155,
                      height: 34,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          // side: WidgetStateProperty.all<BorderSide>(
                          //   const BorderSide(
                          //     width: 1, // Set the border thickness here
                          //     color: Colors.black, // Set the border color
                          //   ),
                          // ),
                          // Set background color to black
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Rectangle with slight border radius
                            ),
                          ),
                        ),
                        child: const Text(
                          'See all offers',
                          style: TextStyle(
                            color: Colors.black,
                          ), // Set text color to white for contrast
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
                const Spacer(),
                // Rocket Image Section
                CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.white,
                  maxRadius: 60,
                  child: Image.asset(
                    'assets/offercard.png',
                    width: 120,
                    height: 120,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Repairs Duniya Section
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book now',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Feel free to search rent based on preferences',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),
          // Grid view for booknow
          // Grid for Rent Categories
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const PGDuniyaScreen(), // Replace with your destination widget
                    ),
                  ),
                  child: booknowcard(
                      'PG',
                      'https://s3-alpha-sig.figma.com/img/8966/254f/ae57c6c716d20e69725aaa09b5777102?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=jbWRfQgxEr0jdkg68BNT8z-78kCINe-MNVGAmHpLgoxSKSbMIVuiZWo~HWGwXGErdMtCDKlIwxpsQ0kXDL7LRzzjp5AEH4WYnY51851HIgx-wgvIlQTkRpwi9QS2d77555EsAoXgpK3Ld5eUrwwa2NpIpq8u56dWSMjWbOBCkkPKeiuik7D-FX-nJjfNqRn9XdnROw~02CRrko8SFdmyb0eP~gmqivtEdZ70JRseyh-t0Uxh~mllWAngu8317luBMtOR6myBC-3VDPBm70KpiAuiWLP0nuf0bGb41SPertZl4WJCKoK4y3siKg7kEGBAz0ZIRfipnKVnr6EN~tAJVg__',
                      AppColors.AC),
                ),
                booknowcard(
                    'House/Flat rent',
                    'https://s3-alpha-sig.figma.com/img/e92e/4f7f/fb19d039a368694adacc80e0f7d8638b?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=meYETpmnH0oZqRdFtGWL3T9VZbm0YIsC4~HtPVm7n-NQ-~7gnElugC2gmYWR9D8wuUARhcyD-0y5ib1u7Xuuq5GhCp5QOJqAUVWtEO8~LUB8Ny-IpAs611kGzJLy3e1UeppYwMAALWAx2unwmfjeLx-qBwLhx0HVhMPlZI5hzbM40uM6jpuwcakmEvCjN5YIiGsYmsS~WQkRKOPpoMvWOtHiWKnsXC-CCuC3qClTOEAlrDFC9q0sC6T5ogAmw9UEPR2bQRECWaKYn0FgYppW4dzi3aQrSOH9hzUAwJQZSQF8bj6kU7VQliVC8ts6rc1v8~PioHHYW-S~YonC1qUJjQ__',
                    AppColors.friderbgColor),
                booknowcard(
                    'Commercial',
                    'https://s3-alpha-sig.figma.com/img/8f1f/4c02/9de3f3ddbcd3912acba8037798bf76c5?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=F4RbeZZMInWsi6YGu6GvI4EhJ1~N9Ey~LpDnttbPWAmBg3nCwXg4phQQVxRjlY0FWtayEztnnhPm2LAzzleOiyLDX1cBT9Dmuqfncvf2vgIW2GCS-gs1YKZE61ZoBc2t4cw2NiArLJCM-ZZSwz1uEDpOYWPAKqHed0~bcPhFJX9iIt4sYwRoV4Mgbx4Y~dDGGW3dAQpU4lAysqZVno2E8KNyh5MEo5OjyNx-LANXPCgYN1kjkpjUtoNbFfHWAVNj~5alTffqIXTfyCkErCuq51-5Wh26VL8vg5f~zPW8i0fI6E4GD1uqxdSzJBidhmpydqIALDHboJwTozx5y0iXcA__',
                    AppColors.washingmachinebg),
                booknowcard(
                    'Hotel',
                    'https://s3-alpha-sig.figma.com/img/eba0/6075/22524c919f9611ad7cb30142fa15d5dc?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HBZ9S2qpzT-b2jmKZXE42tgap0i3zs54ZDjwd70iqIuIIeRRnLLml~Je6MGAaa7-QMZvBRNXEASfiehZZAKFY2PewFUDMJIUWukpTARqpgacd1iWSE8oO4ZUtcFjUcj7kpPJ4dlUNeh~uoKGSfxUVOuzbH7sSFT-70wEVY-2eaghwjMl3Pt84fRrN0xz784g-fua3UyQwsip~mVWvrkWu5LQ5NzNHs6xp2RSVpmTA1mIuyi6tHoADnkc3SYS8lfAFpdmsUycSPn-D8TqN4OhsKQyhKQ6IInIhdx-4sdeO3qB-YPqeL2MX-08~zeZb2XeF~6G9buPDk3szK3W9MVqww__',
                    AppColors.AC),
              ],
            ),
          ),

          // const SizedBox(height: 10),

          // Additional Recommendation Section
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Join Us',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Let’s become partner of Stays duniya!',
                  style: TextStyle(fontSize: 11, color: AppColors.greytext),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(20), // Add padding for spacing

                  constraints: const BoxConstraints(
                    maxHeight: 177,
                  ),
                  width: MediaQuery.of(context).size.width * 0.99,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.bluecointainer,
                        AppColors.bluecointainer,
                        AppColors.bluecointainer,
                        AppColors.bluecointainer,
                        AppColors.bluecointainer,
                        AppColors.bluecointainer,
                        Colors.white,
                        Colors.white,
                      ], // Soft gradient for clarity
                      begin: Alignment.topRight,

                      end: Alignment.bottomLeft,
                    ),
                  ),
                  child: Row(
                    children: [
                      // Text Section
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "List your property \n",
                            style: TextStyle(
                              fontSize: 15, // Increased font size for clarity
                              fontWeight: FontWeight.bold,
                              color: AppColors
                                  .customblack, // Vibrant red for emphasis
                            ),
                          ),
                          const Text(
                            "Integrate your property with\nStays duniya. ",
                            style: TextStyle(
                              fontSize: 14, // Adjusted font size
                              color: AppColors
                                  .customblack, // Vibrant red for emphasis
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: 155,
                            height: 34,
                            child: OutlinedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: WidgetStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      8.0,
                                    ), // Rectangle with slight border radius
                                  ),
                                ),
                                side: WidgetStateProperty.all(
                                  const BorderSide(
                                    color: Colors.black, // Border color
                                    width: 1, // Border thickness
                                  ),
                                ),
                              ),
                              child: const Text(
                                'Join Us now',
                                style: TextStyle(
                                  color:
                                      Colors.black, // Set text color to black
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                      const Spacer(),
                      // Image Section
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.white,
                        maxRadius: 60,
                        child: Image.network(
                          'https://s3-alpha-sig.figma.com/img/5fed/2fd2/2184cce8394570db8b8103a311369b89?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bMfwcJQTDgGhiQaccAM-IInL9Ou8rJ0gJljdGzojw7jEJWi2oTU4WOoBbOMBbATLIZfKcTYLKaKJw7-YIb10ESV5uec2KRgpXQo~rST4R5PT-yNOBsSIw-ZMEnAxLTirj~Xe6LwokMs-9svpstAlR33iDMcqwr95Q5NcBB2CL~6mCjcQJopL-Nr-wR86Z9en-ZTIEymnPufjnfalr7rYOoqrlj9LHNJQp1vUdav5fIbj8y177dRvzU6vWlClw~m56MzX9vjPKi3FCBD7~FJBzsiBSj291xyn2uDSZWaA0JZFxWRXCDAyggEyicTdOtHjVFX0wqPHeE7SHziHOZbe1A__',
                          width: 80,
                          height: 80,
                          errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error, color: Colors.red);
            },
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            (loadingProgress.expectedTotalBytes ?? 1)
                        : null,
                  ),
                );
              }
            },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
