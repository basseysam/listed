import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  List<String> items = [
    "Security",
    "Cards",
    "Notifications",
    "Live Support",
    "About Us",
    "Contact us",
    "Terms & Privacy Policy",
  ];

  List<String> icons = [
    "assets/icons/security-safe.svg",
    "assets/icons/card.svg",
    "assets/icons/notification.svg",
    "assets/icons/card.svg",
    "assets/icons/card.svg",
    "assets/icons/card.svg",
    "assets/icons/card.svg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            /*Stack(
              children: [
                Container(
                  height: 300,
                    child: Image.asset("assets/images/Header.png", height: 250, width: double.maxFinite, fit: BoxFit.cover,)),
                Positioned(
                  left: 24,
                  top: 45,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                ),
                Positioned(
                  right: 24,
                  top: 45,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset("assets/icons/bell.svg"),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Container(
                      height: 200,
                      color: Colors.red,
                      width: MediaQuery.of(context).size.width * .87,
                    ),
                  ),
                )
              ],
            )*/
            Container(
              height: 300,
              color: Color(0xff00000000),
              child: Stack(
                children: [
                  Container(
                    height: 235,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/Header.png")
                        )
                    ),
                  ),
                  Positioned(
                    left: 24,
                    top: 45,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/icons/menu.svg"),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 24,
                    top: 45,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/icons/bell.svg"),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Container(
                        height: 125,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 30,
                                offset: const Offset(0, 10),
                              ),
                            ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 22),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/profile.png", height: 80, width: 80,),
                                  const Gap(16),
                                  Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              const Text("Abiola Ogunjobi", style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff120A00),
                                                fontFamily: "Poppins-Medium"
                                              ),),
                                              const Gap(2),
                                              SvgPicture.asset("assets/icons/verified.svg"),
                                            ],
                                          ),
                                          const Text("Verified", textAlign: TextAlign.start, style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffB2B3B3),
                                              fontFamily: "Poppins-Regular"
                                          ),),
                                        ],
                                      )
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Gap(2),
            Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Wrap(
                        children: List.generate(items.length, (index){
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24.0),
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 19),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(icons[index]),
                                          const Gap(12),
                                          Text(items[index], style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Poppins-Medium",
                                              color: Color(0xff484848)
                                          ),),
                                        ],
                                      ),
                                      Icon(Icons.arrow_forward_ios_outlined, color: Colors.black, size: 12,)
                                    ],
                                  ),
                                ),
                              ),
                            );
                        }),
                      )
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
