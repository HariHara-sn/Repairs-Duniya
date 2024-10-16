import 'package:flutter/material.dart';
import 'package:repairsdunia/presentation/staysDuniya.dart';
import 'package:repairsdunia/theme/Appcolors.dart';
import 'package:repairsdunia/widgets/categoryCard.dart';
import 'package:repairsdunia/widgets/expertsCard.dart';
import 'package:repairsdunia/widgets/floatingbtn.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawer(),
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: const Text(
          'Repairs Duniya',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
            height: 164,
            width: MediaQuery.of(context).size.width * 0.99,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              gradient: const LinearGradient(
                colors: [
                  AppColors.sandle,
                  AppColors.sandle,
                  AppColors.sandle,
                  Color.fromARGB(255, 255, 254, 254),
                  AppColors.sandle
                ], // Soft gradient for clarity
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                // Text Section
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Refer and earn",
                      style: TextStyle(
                        fontSize: 26, // Increased font size for clarity
                        fontWeight: FontWeight.bold,
                        color: AppColors.customRed, // Vibrant red for emphasis
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Welcome to Karav group",
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColors.customblack,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Spacer(),
                // Rocket Image Section
                CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.white,
                  maxRadius: 50,
                  child: Image.network(
                    'https://s3-alpha-sig.figma.com/img/afb2/6965/6236931c833a2e17c928c28ff1e001f3?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Kz3c8tlFt-UwWsLY37kmvSJWQZIEpYxYFakrUKWKM~y2wMsHHBLctBV46i1oH4msQx8stux--je4zbfjlTNLuIuElaz5ayU8mhqXJyiEGnn7SPkvDaXkrk3tsra5xF2HvoXs5MbK-Dln-gv~~RcBLyoOn3EmBxmrcAn9cIZRC1Cvx~ktI3~WijRlrCaEj22osVe-aUgZhdR60HpPbVBdE0rwq3U~kKzjiI41KIPc1GzG0zjmaaYvDAiiTiCjVPTDPsRxbIpfUeBhkA06MQ6x0Ei~dmulc93gpIKOPsxb~hN8Get4165mCbHfiJSFeP~3Z1EWJt9BbGB~Sby-9y1TcA__',
                    width: 70, // Make the rocket bigger
                    height: 70,
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
                )
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Repairs Duniya Section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Repairs Duniya',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  'View more',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Horizontal List for Repairs Categories
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                categoryCard(
                    'Air conditioner',
                    'https://s3-alpha-sig.figma.com/img/dba3/846e/91836bd866d57ca52405c4dc3d95ad3a?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=P8DVHcKcSUTWoKmKZ31hWQwYfeJ4JW1TeRKunTOsQWleqfhO7DQjrXCZ8ZoctQ0ibHZnzMv-3c0YcZ-tztnChWED5Z~lCKXz2x5FrOPNKWsajP-e2kNZFtdOB1KHQywQx67lUMnMADU9upv0sd4G0PmsJn5vmzRGOLoP5wQNsC0f3aznZ5x8FjGtehuIUP3AsbAf~jxUOhXiC4oiZ8c3aQ8I6QxEmo2BeN616NsVJd7t1Od9Tp9-pGsQyHiLZXmunD6aSNUn0o~ZOk434~pRGPQnXTklue0MDiuYd7Skiq5GIPxttJAOokmcU3koJ9mOW0QJ60Y6bv072YXejUu28Q__',
                    AppColors.AC),
                categoryCard(
                    'Refrigerator',
                    'https://s3-alpha-sig.figma.com/img/db40/e2ec/110b5c6ae1d5f60a651d0cf783f25798?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qT3Fard~mvxCsli2XwzwnnxVtZju6fc0SDe6bfm9-hX3I5N3CApvVlUNYY4c353BjgJlpAYA3bINZ7wa7KzfrBvgSEPn2jBv-e50Wa9SPhtbukZZ-y2CvWM7Ull7efUcoS~dTUHEk7jxIjEtwekBdBHzbpg6dJnyS4ivdWk46ONpsz1uGWlxPLaG~RSfri2CQ6RBNLJz7Nk1-DFJBTXbi7W32Q5OrWr3jG2~j8o5rsjMdSm0ORDNjdQlmiWITkHEp3Zd9~DZ8oU9EKMymoPU3igvxWbKkXt2SJI1wLrq74616oGrQqo8-wToHZB8YBjBgvlSWiX70lQNE73cSodv1w__',
                    AppColors.friderbgColor),
                categoryCard(
                    'Washing machine',
                    'https://s3-alpha-sig.figma.com/img/7f1c/3092/364bcb8ce378597b0e3177f448a618b4?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=j4Ie4ZsS9wlY-8tKkmSPVm~zSyrJfXOs97KPINazKiU8e7PBqhVWCtHVu-NsyS~STA3bkdmVhYB~T6hBXBbyFxhb3oGm6Nr4~zfgNeiXKrKrK1IKHOznRMGZACa6Y7zaY1f27dT52gfafGGUjsqNXpUvrQxFDMA08nuNaDVLhZFWrM9wLCpl58HJPDOkM6Ib~8x7NenGz2ojNwz0V1tgVz3PYHxkKjwFhmstdvDX57JXMgUe2Nreu5zXSI9xQflBmRHeTV~i6kncArGSqoo7J1OHAVX1BzSIkFjH4AejSUrubFUTu-jky4p5~jBObh~ozsUksHbzBHxgnSg1Wn0tJw__',
                    AppColors.washingmachinebg),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Recommended Experts Section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended experts',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                expertcard(
                    'Electrician',
                    'https://s3-alpha-sig.figma.com/img/58f7/526f/e29bd6ef25aa2968a22e2655df4ee552?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=KIRzjO~T7zQPZtY6bMSzHlN0wg8vRA8IJXMdZLKlNP4IV3qPWKSlRggGzHzCzGQGt6l8pgj0tDm6FoO6YTQ0Vnn6OcJ6U8dM3AgAQnbyXjxglcOKGMkFHiBjJ~-Q4gFUywPpm-erRUQ8w1LBZaHqrYEpM3fZzhYt7GobDeilg3Fqpw8KMzQ8Z~0Zw8QXCwtw~LCjr1~NmceGbguF5XtjxvC7DE89pPZRJhOCUhi13NGLacDoAO1JAOHp~8Is65LBDX8q2wBba4doKY7rjzv8a-zZ8Nw1cHBf1cfPFa~XL8waV5fdF1NoYqhoJsSRBfmu5~zanoSOFqjqJjQdEBUMaA__',
                    AppColors.friderbgColor),
                expertcard(
                    'Plumber',
                    'https://s3-alpha-sig.figma.com/img/f44f/6496/0f2245b69f2210b4c9974ff2bb4ead9a?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=eM-gUUJilyi0TyvJSO1oCRNxLraR0P2ucq92qs7NWqjCQnypdWKwTL8GDufidXsL3oxtl8wJhKKri0BdCRCYFh4x3EObrTmi601WNsDz0fC~jy44yobtsQ3WYSU0dIiHdKVsrvk1AOx0WKILXVyEES46M3IX9WybUSOG6p6-BSmcjFmoTMUzdWFwAat3C1e4-uvOvylvvjMGh-wR8PuJddtd4MamVKny4MYKjw89xdoxT3oBHYyvZkdOH2PczJllD-Jwcbso24W8WQ6Xq~~j~bVhNk7wGjeJUnpN5ki3FRzT4qk4axqtnbnhSPNWUGusZUeF5FudFoS-l2HKbL4VWQ__',
                    AppColors.sandle),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Additional Recommendation Section
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Additional recommendation',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color.fromARGB(255, 255, 253, 245),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Buy appliances',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'More offers are waiting inside and free\ndelivery also available.',
                              style: TextStyle(fontSize: 11),
                            ),
                            const SizedBox(height: 15),
                            SizedBox(
                              width: 155,
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStateProperty.all<Color>(Colors
                                          .black), // Set background color to black
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Rectangle with slight border radius
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Shop now',
                                  style: TextStyle(
                                      color: Colors
                                          .white), // Set text color to white for contrast
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/image.png',
                        height: 110,
                        width: 110,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          // Stays Duniya Section
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Stays Duniya',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const StaysDuniya(), // Replace with your destination widget
                        ),
                      ),
                      child: const Text(
                        'View all',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                // Horizontal List for Repairs Categories
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      categoryCard(
                          'House rent',
                          'https://s3-alpha-sig.figma.com/img/e92e/4f7f/fb19d039a368694adacc80e0f7d8638b?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=meYETpmnH0oZqRdFtGWL3T9VZbm0YIsC4~HtPVm7n-NQ-~7gnElugC2gmYWR9D8wuUARhcyD-0y5ib1u7Xuuq5GhCp5QOJqAUVWtEO8~LUB8Ny-IpAs611kGzJLy3e1UeppYwMAALWAx2unwmfjeLx-qBwLhx0HVhMPlZI5hzbM40uM6jpuwcakmEvCjN5YIiGsYmsS~WQkRKOPpoMvWOtHiWKnsXC-CCuC3qClTOEAlrDFC9q0sC6T5ogAmw9UEPR2bQRECWaKYn0FgYppW4dzi3aQrSOH9hzUAwJQZSQF8bj6kU7VQliVC8ts6rc1v8~PioHHYW-S~YonC1qUJjQ__',
                          AppColors.AC),
                      categoryCard(
                          'Paying guest',
                          'https://s3-alpha-sig.figma.com/img/8966/254f/ae57c6c716d20e69725aaa09b5777102?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=jbWRfQgxEr0jdkg68BNT8z-78kCINe-MNVGAmHpLgoxSKSbMIVuiZWo~HWGwXGErdMtCDKlIwxpsQ0kXDL7LRzzjp5AEH4WYnY51851HIgx-wgvIlQTkRpwi9QS2d77555EsAoXgpK3Ld5eUrwwa2NpIpq8u56dWSMjWbOBCkkPKeiuik7D-FX-nJjfNqRn9XdnROw~02CRrko8SFdmyb0eP~gmqivtEdZ70JRseyh-t0Uxh~mllWAngu8317luBMtOR6myBC-3VDPBm70KpiAuiWLP0nuf0bGb41SPertZl4WJCKoK4y3siKg7kEGBAz0ZIRfipnKVnr6EN~tAJVg__',
                          AppColors.friderbgColor),
                      categoryCard(
                          'Commercial',
                          'https://s3-alpha-sig.figma.com/img/8f1f/4c02/9de3f3ddbcd3912acba8037798bf76c5?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=F4RbeZZMInWsi6YGu6GvI4EhJ1~N9Ey~LpDnttbPWAmBg3nCwXg4phQQVxRjlY0FWtayEztnnhPm2LAzzleOiyLDX1cBT9Dmuqfncvf2vgIW2GCS-gs1YKZE61ZoBc2t4cw2NiArLJCM-ZZSwz1uEDpOYWPAKqHed0~bcPhFJX9iIt4sYwRoV4Mgbx4Y~dDGGW3dAQpU4lAysqZVno2E8KNyh5MEo5OjyNx-LANXPCgYN1kjkpjUtoNbFfHWAVNj~5alTffqIXTfyCkErCuq51-5Wh26VL8vg5f~zPW8i0fI6E4GD1uqxdSzJBidhmpydqIALDHboJwTozx5y0iXcA__',
                          AppColors.washingmachinebg),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
