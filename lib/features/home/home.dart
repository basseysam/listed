import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> price = [
   "60%",
   "70%",
   "80%",
   "90%",
   "100%",
   "10%",
   "20%",
   "30%",
   "40%",
   "50%",
  ];

  int selectedDiscount = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      floatingActionButton: FloatingActionButton(
        onPressed: () { _showColor(); },
        backgroundColor: const Color(0xffF64F00),
        elevation: 0,
        child: SvgPicture.asset("assets/icons/pen.svg"),
      ),
    body: Column(
      children: [
        Stack(
          children: [
            Image.asset("assets/images/status.png", height: 100, fit: BoxFit.cover,),
            const Positioned(
              left: 20,
                top: 54,
                child: Icon(Icons.arrow_back_ios, color: Colors.black, size: 24,)),
            const Positioned.fill(
              bottom: 23,
              child: Align(
                alignment: Alignment(0.0, 1.0),
                child: Text("Create Rhapave", style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Poppins-SemiBold",
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),),
              ),
            ),
          ],
        ),
        Expanded(
            child: Column(
              children: [
              const Gap(40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  const [
                                    Text("Rhapsave Savings", style: TextStyle(
                                      color: Color(0xff1C1939),
                                      fontFamily: "Poppins-Regular",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12
                                    ),),
                                    Gap(5),
                                    Text("N 1,000,000", style: TextStyle(
                                      color: Color(0xff1C1939),
                                      fontFamily: "Poppins-Bold",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24
                                    ),),
                                    Gap(5),
                                    Text("Save automatically towards a several goals.", style: TextStyle(
                                      color: Color(0xff828282),
                                      fontFamily: "Poppins-Regular",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8
                                    ),),
                                  ],
                                ),
                              ),
                              Expanded(
                                
                                  child: Image.asset("assets/images/chart.png", height: 80, width:  80,)
                              )
                            ],
                          ),
                          const Gap(13),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffFFB531),
                                      ),
                                    ),
                                    const Gap(4),
                                    const Text("Car Savings", style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins-Regular",
                                      color: Color(0xff828282)
                                    ),)
                                  ],
                                ),
                            Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffFF9D78),
                                      ),
                                    ),
                                    const Gap(4),
                                    const Text("Mortage Savings", style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins-Regular",
                                      color: Color(0xff828282)
                                    ),)
                                  ],
                                ),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffF64F00),
                                      ),
                                    ),
                                    const Gap(4),
                                    const Text("School Fees ", style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins-Regular",
                                      color: Color(0xff828282)
                                    ),)
                                  ],
                                ),
                             Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffFFB531),
                                      ),
                                    ),
                                    const Gap(4),
                                    const Text("Christmas Savings", style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins-Regular",
                                      color: Color(0xff828282)
                                    ),)
                                  ],
                                ),

                            ],
                          ),
                          const Gap(8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffFFB531),
                                      ),
                                    ),
                                    const Gap(4),
                                    const Text("Car Savings", style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins-Regular",
                                      color: Color(0xff828282)
                                    ),)
                                  ],
                                ),
                            Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffFF9D78),
                                      ),
                                    ),
                                    const Gap(4),
                                    const Text("Mortage Savings", style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins-Regular",
                                      color: Color(0xff828282)
                                    ),)
                                  ],
                                ),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffF64F00),
                                      ),
                                    ),
                                    const Gap(4),
                                    const Text("School Fees ", style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins-Regular",
                                      color: Color(0xff828282)
                                    ),)
                                  ],
                                ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
        )
      ],
    ),
    );
  }

  Future _showColor(){
    return showModalBottomSheet(
        context: context,
        isScrollControlled: false,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context){
          return Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(8),
                        Center(
                          child: Container(
                            width: 55,
                            height: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(55),
                              color: const Color.fromRGBO(38, 38, 38, 0.13),
                            ),
                          ),
                        ),
                        const Gap(24),
                        const Text("Awesome", style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w200,
                            color: Color(0xff26202C),
                            fontFamily: "Poppins-ExtraLight"
                        ),),
                        const Gap(5),
                        const Text("What percentage of your\nincome would you like to\nsave?", style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff26202C),
                          fontFamily: "Poppins-Black",

                        ),),
                        const Gap(16),
                      ],
                    ),
                  ),

                  DisCount(price: price),
                  const Gap(16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: const Color(0xffB2B3B3).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        cursorColor: Colors.black,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'First Name field cannot be empty';
                          }
                          return null;
                        },
                        decoration:  InputDecoration(
                          hintStyle:  TextStyle(
                              fontSize: 12,
                              height: 1.8,
                              fontFamily: "Poppins-Regular",
                              color: const Color(0xff120A00).withOpacity(0.3)),
                          hintText: 'Enter Manually',
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.all(13),
                        ),
                      ),
                    ),
                  ),
                  const Gap(16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF64F00),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 14.0),
                        child: Center(
                          child: Text("Create Save", style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontFamily: "Poppins-Regular"
                          ),),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}

class DisCount extends StatefulWidget {
  const DisCount({Key? key, required this.price}) : super(key: key);
  final List<String> price;
  @override
  State<DisCount> createState() => _DisCountState();
}

class _DisCountState extends State<DisCount> {
  int selectedDiscount = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        width: double.maxFinite,
        child: Wrap(
          direction: Axis.horizontal,
          children: List.generate(widget.price.length, (index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  selectedDiscount = index;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(right: 5, bottom: 24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: selectedDiscount == index ? const Color(0xffFE8C00) : const Color.fromRGBO(178, 179, 179, 0.2)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
                  child: Text(widget.price[index], textAlign: TextAlign.center, style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xff120A00),
                      fontFamily: "Poppins-Medium",
                      fontWeight: FontWeight.w400
                  ),),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

